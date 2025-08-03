import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:path/path.dart' as path;
import 'package:symbal_fl/env/env.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/data/models/game_analytics/game_analytics.dart';
import 'package:symbal_fl/features/game/data/models/user_game_preference/user_game_preference.dart';
import 'package:symbal_fl/features/game/domain/entities/game_details/game_details.dart';
import 'package:symbal_fl/features/game/domain/entities/message_model.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';

class GameRemoteDatasource {
  late final Dio _dio;

  GameRemoteDatasource() {
    _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'Content-Type': 'application/json',
      },
    ));
  }

  Future<MessageModel> generateGame(MessageModel message) async {
    try {
      // Prepare the request body
      final requestBody = {
        'prompt': message.prompt,
        'userId': null, // You can add user ID from your auth system
        'assets': message.attachedFiles, // Array of asset URLs
      };

// Get the current user session
      final supabase = Supabase.instance.client;
      final session = supabase.auth.currentSession;
      
      // Make HTTP request to Supabase Edge Function using Dio
      final response = await _dio.post(
        '${Env.dbUrl}/functions/v1/generate-game-gemini',
        data: requestBody,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${session?.accessToken}', // Use session token
          },
        ),
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        
        // Parse the response and create a MessageModel with the generated game
        return MessageModel(
          prompt: responseData['game']['messageToUser'] ?? 'Game generated successfully!',
          isUser: false,
          timestamp: DateTime.now(),
          attachedFiles: message.attachedFiles,
          game: GameDataModel(
            id: responseData['gameId']?.toString() ?? DateTime.now().millisecondsSinceEpoch.toString(),
            assets: message.attachedFiles,
            version: 1,
            renderableContent: responseData['game']['html'] ?? '',
            prompt: message.prompt,
            message: responseData['game']['messageToUser'] ?? 'Game generated successfully!',
          ),
        );
      } else {
        // Handle error response
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          message: 'Failed to generate game: ${response.data['error'] ?? 'Unknown error'}',
        );
      }
    } on DioException catch (e) {
      if(kDebugMode){
        print('DioException: ${e}');
      }
      // Handle Dio-specific errors
      String errorMessage = 'Sorry, I encountered an error while generating your game: ';
      
      if (e.type == DioExceptionType.connectionTimeout) {
        errorMessage += 'Connection timeout. Please check your internet connection.';
      } else if (e.type == DioExceptionType.receiveTimeout) {
        errorMessage += 'Request timeout. The server took too long to respond.';
      } else if (e.response != null) {
        final errorData = e.response?.data;
        errorMessage += errorData['error'] ?? 'Server error (${e.response?.statusCode})';
      } else {
        errorMessage += e.message ?? 'Network error';
      }

      return MessageModel(
        prompt: errorMessage,
        isUser: false,
        timestamp: DateTime.now(),
        attachedFiles: message.attachedFiles,
      );
    } catch (e) {
      if(kDebugMode){
        print('Error: ${e}');
      }

      // Handle any other errors
      return MessageModel(
        prompt: 'Sorry, I encountered an unexpected error: ${e.toString()}',
        isUser: false,
        timestamp: DateTime.now(),
        attachedFiles: message.attachedFiles,
      );
    }
  }
  Future<List<String>> uploadFiles(List<File> files) async {
    try {
      final supabase = Supabase.instance.client;
      List<String> uploadedUrls = [];
      
      for (File file in files) {
        // Read file as bytes
        final bytes = await file.readAsBytes();
        
        // Create a unique filename with timestamp
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final fileExtension = path.extension(file.path);
        final fileName = '${timestamp}_${path.basenameWithoutExtension(file.path)}$fileExtension';
        
        // Upload to Supabase Storage
        final uploadPath = 'game-assets/$fileName';
        
        await supabase.storage
            .from('game-assets') // Make sure this bucket exists in your Supabase project
            .uploadBinary(
              uploadPath,
              bytes,
              fileOptions: FileOptions(
                cacheControl: '3600',
                upsert: false,
              ),
            );
        
        // Get the public URL
        final publicUrl = supabase.storage
            .from('game-assets')
            .getPublicUrl(uploadPath);
        
        uploadedUrls.add(publicUrl);
      }
      
      return uploadedUrls;
    } on StorageException catch (e) {
      throw Exception('Failed to upload files to Supabase Storage: ${e.message}');
    } catch (e) {
      throw Exception('Failed to upload files: ${e.toString()}');
    }
  }

  Future<void> saveGame(GameDataModel gameData) async {
    try {
      final supabase = Supabase.instance.client;
      
      await supabase.from('game_data').insert(gameData.toJson());
    } catch (e) {
      throw Exception('Failed to save game: ${e.toString()}');
    }
  }

  Future<void> upsertGameModel(GameModel gameModel) async {
    try {
      final supabase = Supabase.instance.client;
      
      // Convert GameModel to JSON for Supabase
      final gameJson = gameModel.toJson();
      
      // Handle DateTime conversion for Supabase
      if (gameModel.createdAt != null) {
        gameJson['created_at'] = gameModel.createdAt!.toIso8601String();
      }
      if (gameModel.updatedAt != null) {
        gameJson['updated_at'] = gameModel.updatedAt!.toIso8601String();
      } else {
        gameJson['updated_at'] = DateTime.now().toIso8601String();
      }
      
      // Upsert (insert or update) into games table
      await supabase.from('games').upsert(gameJson);
      
    } catch (e) {
      throw Exception('Failed to upsert game model: ${e.toString()}');
    }
  }

  Future<GameDetails> getGameDetails(String gameId, {String? userId}) async {
    try {
      final supabase = Supabase.instance.client;

      // Fetch game model
      final gameModelResponse = await supabase
          .from('games')
          .select()
          .eq('id', gameId)
          .single();

      // Fetch game data (AI generated content)
      final gameDataResponse = await supabase
          .from('game_data')
          .select()
          .eq('game_id', gameId)
          .single();

      // Fetch analytics (may not exist)
      final analyticsResponse = await supabase
          .from('game_analytics')
          .select()
          .eq('game_id', gameId)
          .maybeSingle();

      // Fetch user preferences (only if userId provided)
      Map<String, dynamic>? userPrefResponse;
      if (userId != null) {
        userPrefResponse = await supabase
            .from('user_game_preferences')
            .select()
            .eq('user_id', userId)
            .eq('game_id', gameId)
            .maybeSingle();
      }

      return GameDetails(
        gameModel: GameModel.fromJson(gameModelResponse),
        gameData: GameDataModel.fromJson(gameDataResponse),
        analytics: analyticsResponse != null 
            ? GameAnalytics.fromJson(analyticsResponse)
            : GameAnalytics(gameId: gameId), // Default empty analytics
        userPreference: userPrefResponse != null 
            ? UserGamePreference.fromJson(userPrefResponse)
            : null,
      );
    } catch (e) {
      throw Exception('Failed to fetch game details: ${e.toString()}');
    }
  }

  Future<List<GameDetails>> getGamesList({String? userId, required int page, required int limit}) async {
    try {
      // Get basic games first
      final games = await getGames(page: page, limit: limit);
      
      // Convert each to GameDetails
      List<GameDetails> gameDetailsList = [];
      for (final game in games) {
        final gameDetails = await getGameDetails(game.id, userId: userId);
        gameDetailsList.add(gameDetails);
      }

      return gameDetailsList;
    } catch (e) {
      throw Exception('Failed to fetch games list: ${e.toString()}');
    }
  }

  Future<GameModel> getGame(String gameId) async {
    try {
      final supabase = Supabase.instance.client;
      
      final response = await supabase
          .from('games')
          .select()
          .eq('id', gameId)
          .single();

      return GameModel.fromJson(response);
    } catch (e) {
      throw Exception('Failed to fetch game: ${e.toString()}');
    }
  }

  Future<List<GameModel>> getGames({required int page, required int limit}) async {
    try {
      final supabase = Supabase.instance.client;
      final offset = page * limit;

      final response = await supabase
          .from('games')
          .select()
          .range(offset, offset + limit - 1)
          .order('created_at', ascending: false);

      return response.map((data) => GameModel.fromJson(data)).toList().cast<GameModel>();
    } catch (e) {
      throw Exception('Failed to fetch games: ${e.toString()}');
    }
  }

  Future<void> incrementPlayCount(String gameId) async {
    try {
      final supabase = Supabase.instance.client;

      await supabase.rpc('increment_play_count', params: {
        'p_game_id': gameId,
      });
    } catch (e) {
      throw Exception('Failed to increment play count: ${e.toString()}');
    }
  }

  Future<void> toggleFavorite(String gameId, String userId) async {
    try {
      final supabase = Supabase.instance.client;

      await supabase.rpc('toggle_favorite', params: {
        'p_user_id': userId,
        'p_game_id': gameId,
      });
    } catch (e) {
      throw Exception('Failed to toggle favorite: ${e.toString()}');
    }
  }

  Future<void> likeGame(String gameId, String userId) async {
    try {
      final supabase = Supabase.instance.client;

      await supabase.rpc('toggle_like', params: {
        'p_user_id': userId,
        'p_game_id': gameId,
      });
    } catch (e) {
      throw Exception('Failed to like game: ${e.toString()}');
    }
  }
}
