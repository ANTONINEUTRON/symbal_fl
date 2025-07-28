
import 'package:symbal_fl/features/game/data/models/game_schema/game_story_model.dart';

class DummyGameStories{
  static final List<GameStory> stories = [
    GameStory(
      id: '1',
      title: 'Mystic Forest Adventure',
      description: 'A magical journey through an enchanted forest',
      imageUrl: 'assets/images/forest_game.jpg',
      duration: '15 min',
      story: 'In a world where magic flows through ancient trees...',
      gameType: 'Puzzle',
    ),
    GameStory(
      id: '2',
      title: 'Space Rescue Mission',
      description: 'Save the galaxy in this thrilling space adventure',
      imageUrl: 'assets/images/space_game.jpg',
      duration: '12 min',
      story: 'The year is 2387, and humanity\'s last hope...',
      gameType: 'Action',
    ),
    GameStory(
      id: '3',
      title: 'Lost City Explorer',
      description: 'Uncover secrets in the ruins of a forgotten city',
      imageUrl: 'assets/images/lost_city.jpg',
      duration: '18 min',
      story: 'Legends speak of a city lost beneath the sands...',
      gameType: 'Adventure',
    ),
    GameStory(
      id: '4',
      title: 'Underwater Quest',
      description: 'Dive deep to discover ocean mysteries',
      imageUrl: 'assets/images/underwater_game.jpg',
      duration: '10 min',
      story: 'Beneath the waves, ancient secrets await discovery...',
      gameType: 'Exploration',
    ),
    GameStory(
      id: '5',
      title: 'Robot Rebellion',
      description: 'Stop the rogue robots and save the city',
      imageUrl: 'assets/images/robot_game.jpg',
      duration: '14 min',
      story: 'Robots once served humanity, but now they threaten it...',
      gameType: 'Strategy',
    ),
    GameStory(
      id: '6',
      title: 'Jungle Escape',
      description: 'Survive the wild and escape the jungle',
      imageUrl: 'assets/images/jungle_game.jpg',
      duration: '16 min',
      story: 'Trapped in a dense jungle, every step is a challenge...',
      gameType: 'Survival',
    ),
    GameStory(
      id: '7',
      title: 'Haunted Manor Mystery',
      description: 'Solve the mystery of the haunted manor',
      imageUrl: 'assets/images/haunted_manor.jpg',
      duration: '13 min',
      story: 'Strange noises echo through the halls of the old manor...',
      gameType: 'Mystery',
    ), ];
}
