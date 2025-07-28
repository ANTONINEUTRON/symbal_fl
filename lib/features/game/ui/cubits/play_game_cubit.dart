
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/ui/cubits/Play_game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(const GameState());

  void generateGame() {
    emit(state.copyWith());
    // Call the use case and handle success/error
  }

  void fetchGame(){
    emit(state.copyWith());
    // Call the use case to fetch game data
  }

  void loadGameList(){
    emit(state.copyWith());
    // Call the use case to load the game list
  }

  void reset() {
    emit(const GameState());
  }
}