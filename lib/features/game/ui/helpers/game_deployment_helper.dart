import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/game/ui/widgets/deploy_game_dialog.dart';

class GameDeploymentHelper {
  /// Show deployment dialog with all available games
  static void showDeployDialog(BuildContext context) {
    final gameCubit = context.read<GameCubit>();
    final allGames = gameCubit.getAllGeneratedGames();
    final currentGame = gameCubit.state.generatedGame;
    
    if (allGames.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No games available for deployment'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }
    
    showDialog(
      context: context,
      builder: (context) => DeployGameDialog(
        availableGames: allGames,
        selectedGame: currentGame ?? allGames.last,
      ),
    );
  }

  /// Quick deploy the latest generated game
  static void quickDeployLatest(BuildContext context) {
    final gameCubit = context.read<GameCubit>();
    final latestGame = gameCubit.getLatestGame();
    
    if (latestGame == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No games available for deployment'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    // Show confirmation dialog for quick deploy
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Quick Deploy'),
        content: Text(
          'Deploy "${latestGame.title}" with current settings?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              gameCubit.deployGame(gameToDeploy: latestGame);
              Navigator.of(context).pop();
              
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Deploying game...'),
                  backgroundColor: Colors.blue,
                ),
              );
            },
            child: const Text('Deploy'),
          ),
        ],
      ),
    );
  }

  /// Show game selection dialog for deployment
  static void showGameSelectionDialog(BuildContext context) {
    final gameCubit = context.read<GameCubit>();
    final allGames = gameCubit.getAllGeneratedGames();
    
    if (allGames.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No games available for deployment'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Game to Deploy'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: allGames.length,
            itemBuilder: (context, index) {
              final game = allGames[index];
              return ListTile(
                title: Text(game.title.isNotEmpty ? game.title : 'Untitled Game'),
                subtitle: Text(
                  'Created: ${_formatDateTime(game.createdAt)}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).pop();
                  gameCubit.selectGameForDeployment(game.id);
                  showDeployDialog(context);
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  static String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return 'Unknown';
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
