import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_state.dart';
import 'package:symbal_fl/features/profile/ui/widgets/empty_history_state.dart';
import 'package:symbal_fl/features/profile/ui/widgets/game_history_item.dart';

class DeployedGamesTab extends StatefulWidget {
  const DeployedGamesTab({super.key});

  @override
  State<DeployedGamesTab> createState() => _DeployedGamesTabState();
}

class _DeployedGamesTabState extends State<DeployedGamesTab> {
  @override
  void initState() {
    super.initState();
    // Load deployed games when tab is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<GameCubit>().loadDeployedGames();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        if (state.isLoadingDeployedGames) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.error != null && state.deployedGames.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 64,
                  color: Colors.red[300],
                ),
                const SizedBox(height: 16),
                Text(
                  'Error loading deployed games',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  state.error!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => context.read<GameCubit>().loadDeployedGames(),
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        if (state.deployedGames.isEmpty) {
          return EmptyState(
            icon: Icons.rocket_launch_outlined,
            title: 'No Deployed Games',
            subtitle: 'Your deployed games will appear here',
          );
        }

        return RefreshIndicator(
          onRefresh: () => context.read<GameCubit>().refreshDeployedGames(),
          child: GameHistoryItem(games: state.deployedGames, isDeployed: true),
        );
      },
    );
  }
}
