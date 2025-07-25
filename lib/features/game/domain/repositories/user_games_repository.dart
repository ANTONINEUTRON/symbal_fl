import 'package:symbal_fl/features/game/data/models/create_message_model.dart';

/// Repository interface for user games
/// This repository is responsible for managing user-specific game data
abstract class UserGamesRepository {
  Future<List<CreateMessageModel>> fetchUserGames(String userId);
}
