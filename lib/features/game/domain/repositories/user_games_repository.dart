import 'package:symbal_fl/features/game/domain/entities/message_model.dart';

/// Repository interface for user games
/// This repository is responsible for managing user-specific game data
abstract class UserGamesRepository {
  Future<List<MessageModel>> fetchUserGames(String userId);
}
