import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_cubit.dart';
import 'package:symbal_fl/features/game/ui/cubits/game_state.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';

@RoutePage()
class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Game History',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.tertiary,
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: _StickyTabBarDelegate(
              TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.rocket_launch, size: 18),
                        SizedBox(width: 8),
                        Text('Deployed'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.drafts, size: 18),
                        SizedBox(width: 8),
                        Text('Drafts'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            pinned: true,
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: [DeployedGamesTab(), DraftsTab()],
            ),
          ),
        ],
      ),
    );
  }
}

class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _StickyTabBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}

class DeployedGamesTab extends StatelessWidget {
  const DeployedGamesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, CreateGameState>(
      builder: (context, state) {
        // For now, showing dummy deployed games
        // In a real app, you'd fetch deployed games from a repository
        final deployedGames = _getDummyDeployedGames();

        if (deployedGames.isEmpty) {
          return _EmptyState(
            icon: Icons.rocket_launch_outlined,
            title: 'No Deployed Games',
            subtitle: 'Your deployed games will appear here',
          );
        }

        return GameStack(games: deployedGames, isDeployed: true);
      },
    );
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
        createdAt: DateTime.now().subtract(Duration(days: 5)),
      ),
      GameModel(
        id: 'deployed_2',
        title: 'Puzzle Master',
        description: 'Challenge your mind with complex puzzles',
        imageUrl: 'assets/images/puzzle_game.jpg',
        isVerified: true,
        tags: ['puzzle', 'logic'],
        createdAt: DateTime.now().subtract(Duration(days: 10)),
      ),
    ];
  }
}

class DraftsTab extends StatelessWidget {
  const DraftsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, CreateGameState>(
      builder: (context, state) {
        final draftGames = state.draftGames;

        if (draftGames.isEmpty) {
          return _EmptyState(
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

        return GameStack(games: draftGames, isDeployed: false);
      },
    );
  }
}

class GameStack extends StatelessWidget {
  final List<GameModel> games;
  final bool isDeployed;

  const GameStack({super.key, required this.games, required this.isDeployed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: games.length,
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemBuilder: (context, index) {
          final game = games[index];
          return GameCard(game: game, isDeployed: isDeployed);
        },
      ),
    );
  }
}

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
                          onSelected: (value) =>
                              _onMenuAction(context, value),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Expanded(
                      child: Text(
                        game.description,
                        style: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(color: Colors.black54),
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
                                ?.copyWith(
                                  color: Colors.black45,
                                  fontSize: 10,
                                ),
                          ),
                      ],
                    ).addSpacing(top: 4),
                  ],
                ).addSpacing(vertical: 4, horizontal: 8,),
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
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Deploy Game'),
        content: Text(
          'Are you sure you want to deploy "${game.title}" to production?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<GameCubit>().deployGame(gameToDeploy: game);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${game.title} deployed successfully!')),
              );
            },
            child: Text('Deploy'),
          ),
        ],
      ),
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

class _EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? actionText;
  final VoidCallback? onAction;

  const _EmptyState({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.actionText,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80, color: Colors.white38),
            SizedBox(height: 24),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.white60),
              textAlign: TextAlign.center,
            ),
            if (actionText != null && onAction != null) ...[
              SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: onAction,
                icon: Icon(Icons.add),
                label: Text(actionText!),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
