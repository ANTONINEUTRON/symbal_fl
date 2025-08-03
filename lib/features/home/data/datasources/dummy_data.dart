
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';

class DummyGameStories{
  static final List<GameModel> stories = [
    GameModel(
      id: '1',
      title: 'Mystic Forest Adventure',
      description: 'A magical journey through an enchanted forest',
      imageUrl: 'assets/images/forest_game.jpg',
      duration: '15 min',
      gameType: 'Puzzle',
    ),
    GameModel(
      id: '2',
      title: 'Space Rescue Mission',
      description: 'Save the galaxy in this thrilling space adventure',
      imageUrl: 'assets/images/space_game.jpg',
      duration: '12 min',
      gameType: 'Action',
    ),
    GameModel(
      id: '3',
      title: 'Lost City Explorer',
      description: 'Uncover secrets in the ruins of a forgotten city',
      imageUrl: 'assets/images/lost_city.jpg',
      duration: '18 min',
      gameType: 'Adventure',
    ),
    GameModel(
      id: '4',
      title: 'Underwater Quest',
      description: 'Dive deep to discover ocean mysteries',
      imageUrl: 'assets/images/underwater_game.jpg',
      duration: '10 min',
      gameType: 'Exploration',
    ),
    GameModel(
      id: '5',
      title: 'Robot Rebellion',
      description: 'Stop the rogue robots and save the city',
      imageUrl: 'assets/images/robot_game.jpg',
      duration: '14 min',
      gameType: 'Strategy',
    ),
    GameModel(
      id: '6',
      title: 'Jungle Escape',
      description: 'Survive the wild and escape the jungle',
      imageUrl: 'assets/images/jungle_game.jpg',
      duration: '16 min',
      gameType: 'Survival',
    ),
    GameModel(
      id: '7',
      title: 'Haunted Manor Mystery',
      description: 'Solve the mystery of the haunted manor',
      imageUrl: 'assets/images/haunted_manor.jpg',
      duration: '13 min',
      gameType: 'Mystery',
    ), ];
}
