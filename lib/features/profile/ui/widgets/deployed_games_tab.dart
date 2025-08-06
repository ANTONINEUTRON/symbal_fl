import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/profile/ui/widgets/empty_history_state.dart';
import 'package:symbal_fl/features/profile/ui/widgets/game_history_item.dart';



class DeployedGamesTab extends StatelessWidget {
  const DeployedGamesTab({super.key});

  @override
  Widget build(BuildContext context) {
    var gameState = context.read<GameCubit>().state;
    // In a real app, you'd fetch deployed games from a repository
    final deployedGames = _getDummyDeployedGames();

    if (deployedGames.isEmpty) {
      return EmptyState(
        icon: Icons.rocket_launch_outlined,
        title: 'No Deployed Games',
        subtitle: 'Your deployed games will appear here',
      );
    }

    return GameHistoryItem(games: deployedGames, isDeployed: true);
  }

  List<GameModel> _getDummyDeployedGames() {
    return [
      GameModel(
        id: 'deployed_1',
        title: 'Space Adventure',
        description: 'An epic journey through the cosmos',
        imageUrl: 'assets/images/space_game.jpg',
        isVerified: true,
        tags: ['adventure', 'space'],
        tokenUrl: null,
        createdAt: DateTime.now().subtract(Duration(days: 5)),
      ),
      GameModel(
        id: 'deployed_2',
        title: 'Puzzle Master',
        description: 'Challenge your mind with complex puzzles',
        imageUrl: 'assets/images/puzzle_game.jpg',
        isVerified: true,
        tags: ['puzzle', 'logic'],
        tokenUrl: null,
        createdAt: DateTime.now().subtract(Duration(days: 10)),
      ),
    ];
  }
}
