import 'package:equatable/equatable.dart';
import 'package:symbal_fl/features/game/data/models/game_story_model.dart';

enum GameStoriesLoadingStatus { initial, loading, success, failure, refreshing, loadingMore }

class GameState extends Equatable {
  const GameState({
    this.gameStories = const [],
    this.currentGameStoryIndex = 0,
    this.gameStoriesLoadingStatus = GameStoriesLoadingStatus.initial,
    this.errorMessage,
    this.hasReachedMax = false,
    this.currentPage = 1,
  });

  final List<GameStory> gameStories;
  final int currentGameStoryIndex;
  final GameStoriesLoadingStatus gameStoriesLoadingStatus;
  final String? errorMessage;
  final bool hasReachedMax;
  final int currentPage;

  // Get current game story being viewed
  GameStory? get currentGameStory {
    if (gameStories.isEmpty || currentGameStoryIndex >= gameStories.length) {
      return null;
    }
    return gameStories[currentGameStoryIndex];
  }

  // Check if we have any game stories
  bool get hasGameStories => gameStories.isNotEmpty;

  // Check if we're at the last game story
  bool get isAtLastStory => currentGameStoryIndex >= gameStories.length - 1;

  // Check if we're at the first game story
  bool get isAtFirstStory => currentGameStoryIndex <= 0;

  @override
  List<Object?> get props => [
        gameStories,
        currentGameStoryIndex,
        gameStoriesLoadingStatus,
        errorMessage,
        hasReachedMax,
        currentPage,
      ];

  GameState copyWith({
    List<GameStory>? gameStories,
    int? currentGameStoryIndex,
    GameStoriesLoadingStatus? gameStoriesLoadingStatus,
    String? errorMessage,
    bool? hasReachedMax,
    int? currentPage,
  }) {
    return GameState(
      gameStories: gameStories ?? this.gameStories,
      currentGameStoryIndex: currentGameStoryIndex ?? this.currentGameStoryIndex,
      gameStoriesLoadingStatus: gameStoriesLoadingStatus ?? this.gameStoriesLoadingStatus,
      errorMessage: errorMessage ?? this.errorMessage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  // Helper method to clear error
  GameState clearError() {
    return copyWith(errorMessage: null);
  }

  // Helper method to add new game stories (for pagination)
  GameState addGameStories(List<GameStory> newStories) {
    return copyWith(
      gameStories: [...gameStories, ...newStories],
      hasReachedMax: newStories.isEmpty,
      currentPage: currentPage + 1,
    );
  }

  // Helper method to refresh game stories
  GameState refreshGameStories(List<GameStory> newStories) {
    return copyWith(
      gameStories: newStories,
      currentGameStoryIndex: 0,
      hasReachedMax: false,
      currentPage: 1,
      errorMessage: null,
    );
  }

  // Helper method to update a specific game story (for likes, plays, etc.)
  GameState updateGameStory(String gameId, GameStory updatedStory) {
    final updatedStories = gameStories.map((story) {
      if (story.id == gameId) {
        return updatedStory;
      }
      return story;
    }).toList();

    return copyWith(gameStories: updatedStories);
  }

  // Helper method to move to next game story
  GameState moveToNextStory() {
    if (!isAtLastStory) {
      return copyWith(currentGameStoryIndex: currentGameStoryIndex + 1);
    }
    return this;
  }

  // Helper method to move to previous game story
  GameState moveToPreviousStory() {
    if (!isAtFirstStory) {
      return copyWith(currentGameStoryIndex: currentGameStoryIndex - 1);
    }
    return this;
  }
}
