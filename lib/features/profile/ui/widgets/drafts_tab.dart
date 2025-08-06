import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/profile/ui/widgets/empty_history_state.dart';
import 'package:symbal_fl/features/profile/ui/widgets/game_history_item.dart';


class DraftsTab extends StatelessWidget {
  const DraftsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var gameState = context.read<GameCubit>().state;
    final draftGames = gameState.draftGames;

    if (draftGames.isEmpty) {
      return EmptyState(
        icon: Icons.drafts_outlined,
        title: 'No Draft Games',
        subtitle: 'Create a game to see your drafts here',
        actionText: 'Create Game',
        onAction: () {
          // Navigate to game creation
          // context.router.push(CreateGameRoute());
        },
      );
    }

    return GameHistoryItem(games: draftGames, isDeployed: false);
  }
}
