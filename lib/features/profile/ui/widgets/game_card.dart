

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/game/ui/widgets/deploy_game_dialog.dart';

class GameCard extends StatelessWidget {
  final GameModel game;
  final bool isDeployed;

  const GameCard({super.key, required this.game, required this.isDeployed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () => _onGameTap(context),
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 120,
          child: Row(
            children: [
              // Game Image/Icon
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(16),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.primary.withOpacity(0.7),
                      Theme.of(context).colorScheme.secondary.withOpacity(0.7),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Icon(Icons.games, size: 48, color: Colors.white70),
                    ),
                    // Status badge
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: isDeployed ? Colors.green : Colors.orange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          isDeployed ? 'LIVE' : 'DRAFT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Game Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            game.title,
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  // color: Colors.white,
                                ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        PopupMenuButton(
                          icon: Icon(
                            Icons.more_vert,
                            size: 20,
                            // color: Colors.white70,
                          ),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 'play',
                              child: Row(
                                children: [
                                  Icon(Icons.play_arrow, size: 16),
                                  SizedBox(width: 8),
                                  Text('Play'),
                                ],
                              ),
                            ),
                            if (!isDeployed) ...[
                              PopupMenuItem(
                                value: 'deploy',
                                child: Row(
                                  children: [
                                    Icon(Icons.rocket_launch, size: 16),
                                    SizedBox(width: 8),
                                    Text('Deploy'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'edit',
                                child: Row(
                                  children: [
                                    Icon(Icons.edit, size: 16),
                                    SizedBox(width: 8),
                                    Text('Edit'),
                                  ],
                                ),
                              ),
                            ],
                            PopupMenuItem(
                              value: 'delete',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.delete,
                                    size: 16,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Delete',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          onSelected: (value) => _onMenuAction(context, value),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Expanded(
                      child: Text(
                        game.description,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ).addSpacing(bottom: 2),
                    // Tags and Date
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (game.tags.isNotEmpty)
                          Wrap(
                            spacing: 4,
                            children: game.tags
                                .take(2)
                                .map(
                                  (tag) => Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      tag,
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        if (game.createdAt != null)
                          Text(
                            _formatDate(game.createdAt!),
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.black45, fontSize: 10),
                          ),
                      ],
                    ).addSpacing(top: 4),
                  ],
                ).addSpacing(vertical: 4, horizontal: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onGameTap(BuildContext context) {
    // Navigate to game details or play
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Opening ${game.title}...')));
  }

  void _onMenuAction(BuildContext context, String action) {
    switch (action) {
      case 'play':
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Playing ${game.title}...')));
        break;
      case 'deploy':
        _showDeployDialog(context);
        break;
      case 'edit':
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Editing ${game.title}...')));
        break;
      case 'delete':
        _showDeleteDialog(context);
        break;
    }
  }

  void _showDeployDialog(BuildContext context) {
    // Get current state to access available games
    final currentState = context.read<GameCubit>().state;
    List<GameModel> availableGames = [];

    // Add draft games
    availableGames.addAll(currentState.draftGames);

    // Add generated game if not already in drafts
    if (currentState.generatedGame != null) {
      bool alreadyInDrafts = currentState.draftGames.any(
        (g) => g.id == currentState.generatedGame!.id,
      );
      if (!alreadyInDrafts) {
        availableGames.add(currentState.generatedGame!);
      }
    }

    // Show deployment dialog for version selection
    showDialog(
      context: context,
      builder: (context) =>
          DeployGameDialog(availableGames: availableGames, selectedGame: game),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Delete Game'),
        content: Text(
          'Are you sure you want to delete "${game.title}"? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              if (!isDeployed) {
                context.read<GameCubit>().deleteDraft(game.id);
              }
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('${game.title} deleted')));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('Delete'),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}

