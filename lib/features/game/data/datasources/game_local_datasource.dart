import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';

class GameLocalDataSource {
  static const String _gamesKey = 'local_games';
  static const String _gamePrefix = 'game_';

  // Save game locally
  Future<void> saveLocalGame(GameModel gameModel) async {
    final prefs = await SharedPreferences.getInstance();
    
    // Update the game with timestamps
    final updatedGame = gameModel.copyWith(
      createdAt: gameModel.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );
    
    // Save individual game
    final gameKey = '$_gamePrefix${gameModel.id}';
    await prefs.setString(gameKey, jsonEncode(updatedGame.toJson()));
    
    // Update games list
    await _updateGamesList(gameModel.id);
  }

  // Get local game by string ID
  Future<GameModel?> getLocalGame(String gameId) async {
    final prefs = await SharedPreferences.getInstance();
    final gameKey = '$_gamePrefix$gameId';
    final gameString = prefs.getString(gameKey);
    
    if (gameString == null) return null;
    
    try {
      final gameJson = jsonDecode(gameString) as Map<String, dynamic>;
      return GameModel.fromJson(gameJson);
    } catch (e) {
      // If there's an error parsing, remove the corrupted data
      await prefs.remove(gameKey);
      return null;
    }
  }

  // Delete local game by string ID
  Future<void> deleteLocalGame(String gameId) async {
    final prefs = await SharedPreferences.getInstance();
    final gameKey = '$_gamePrefix$gameId';
    
    // Remove individual game
    await prefs.remove(gameKey);
    
    // Update games list
    await _removeFromGamesList(gameId);
  }

  // Get all local games
  Future<List<GameModel>> getAllLocalGames() async {
    final gameIds = await _getGameIds();
    
    List<GameModel> games = [];
    
    for (final gameId in gameIds) {
      final game = await getLocalGame(gameId);
      if (game != null) {
        games.add(game);
      }
    }
    
    // Sort by creation date (newest first)
    games.sort((a, b) {
      final aDate = a.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0);
      final bDate = b.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0);
      return bDate.compareTo(aDate);
    });
    
    return games;
  }

  // Get local games by creator
  Future<List<GameModel>> getLocalGamesByCreator(String creatorId) async {
    final allGames = await getAllLocalGames();
    return allGames.where((game) => game.creatorId == creatorId).toList();
  }

  // Search local games by title or description
  Future<List<GameModel>> searchLocalGames(String searchTerm) async {
    final allGames = await getAllLocalGames();
    final lowerSearchTerm = searchTerm.toLowerCase();
    
    return allGames.where((game) {
      return game.title.toLowerCase().contains(lowerSearchTerm) ||
             game.description.toLowerCase().contains(lowerSearchTerm) ||
             game.tags.any((tag) => tag.toLowerCase().contains(lowerSearchTerm));
    }).toList();
  }

  // Get games by tags
  Future<List<GameModel>> getLocalGamesByTag(String tag) async {
    final allGames = await getAllLocalGames();
    return allGames.where((game) => 
      game.tags.any((gameTag) => gameTag.toLowerCase() == tag.toLowerCase())
    ).toList();
  }

  // Clear all local games
  Future<void> clearAllLocalGames() async {
    final prefs = await SharedPreferences.getInstance();
    final gameIds = await _getGameIds();
    
    // Remove all individual games
    for (final gameId in gameIds) {
      final gameKey = '$_gamePrefix$gameId';
      await prefs.remove(gameKey);
    }
    
    // Clear the games list
    await prefs.remove(_gamesKey);
  }

  // Get games count
  Future<int> getLocalGamesCount() async {
    final gameIds = await _getGameIds();
    return gameIds.length;
  }

  // Check if game exists locally
  Future<bool> hasLocalGame(String gameId) async {
    final prefs = await SharedPreferences.getInstance();
    final gameKey = '$_gamePrefix$gameId';
    return prefs.containsKey(gameKey);
  }

  // Get local games with pagination
  Future<List<GameModel>> getLocalGamesPage({
    int page = 0,
    int limit = 20,
  }) async {
    final allGames = await getAllLocalGames();
    final startIndex = page * limit;
    final endIndex = (startIndex + limit).clamp(0, allGames.length);
    
    if (startIndex >= allGames.length) return [];
    
    return allGames.sublist(startIndex, endIndex);
  }

  // Get recently created games
  Future<List<GameModel>> getRecentLocalGames({int limit = 5}) async {
    final allGames = await getAllLocalGames();
    return allGames.take(limit).toList(); // Already sorted by creation date
  }

  // Private helper methods
  Future<List<String>> _getGameIds() async {
    final prefs = await SharedPreferences.getInstance();
    final gameIdsString = prefs.getString(_gamesKey);
    
    if (gameIdsString == null) return [];
    
    try {
      final gameIdsList = jsonDecode(gameIdsString) as List;
      return gameIdsList.cast<String>();
    } catch (e) {
      // If corrupted, reset
      await prefs.remove(_gamesKey);
      return [];
    }
  }

  Future<void> _updateGamesList(String gameId) async {
    final prefs = await SharedPreferences.getInstance();
    final gameIds = await _getGameIds();
    
    // Add game ID if not already present
    if (!gameIds.contains(gameId)) {
      gameIds.add(gameId);
      await prefs.setString(_gamesKey, jsonEncode(gameIds));
    }
  }

  Future<void> _removeFromGamesList(String gameId) async {
    final prefs = await SharedPreferences.getInstance();
    final gameIds = await _getGameIds();
    
    gameIds.remove(gameId);
    await prefs.setString(_gamesKey, jsonEncode(gameIds));
  }

  // Utility methods for debugging
  Future<Map<String, dynamic>> getDebugInfo() async {
    final prefs = await SharedPreferences.getInstance();
    final gameIds = await _getGameIds();
    final count = await getLocalGamesCount();
    
    return {
      'total_games': count,
      'game_ids': gameIds,
      'storage_keys': prefs.getKeys().where((key) => key.startsWith(_gamePrefix)).toList(),
    };
  }

  // Export all games as JSON (for backup)
  Future<String> exportGamesAsJson() async {
    final games = await getAllLocalGames();
    final gamesJson = games.map((game) => game.toJson()).toList();
    return jsonEncode(gamesJson);
  }

  // Import games from JSON (for restore)
  Future<void> importGamesFromJson(String jsonString) async {
    try {
      final gamesList = jsonDecode(jsonString) as List;
      
      for (final gameJson in gamesList) {
        final game = GameModel.fromJson(gameJson as Map<String, dynamic>);
        await saveLocalGame(game);
      }
    } catch (e) {
      throw Exception('Failed to import games: ${e.toString()}');
    }
  }
}