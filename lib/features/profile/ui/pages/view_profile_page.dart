import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/profile/ui/widgets/profile_sliver_app_bar.dart';
import 'package:symbal_fl/features/profile/ui/widgets/stat_section.dart';

@RoutePage()
class ViewProfilePage extends StatefulWidget {
  const ViewProfilePage({super.key});

  @override
  State<ViewProfilePage> createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isFollowing = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            ProfileSliverAppBar(
              isProfileView: true),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  StatsSection().addSpacing(vertical: 16),
                  Container(
                    color: Colors.grey[900],
                    child: TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(text: 'Games'),
                        Tab(text: 'Achievements'),
                        Tab(text: 'Activity'),
                      ],
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey[400],
                      indicatorColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildGamesTab(),
            _buildAchievementsTab(),
            _buildActivityTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildGamesTab() {
    final games = [
      {'title': 'Cyber Legends', 'score': '15,680', 'rank': '#1', 'time': '3h ago'},
      {'title': 'Quantum Racing', 'score': '12,340', 'rank': '#3', 'time': '1d ago'},
      {'title': 'Space Warriors', 'score': '9,870', 'rank': '#5', 'time': '2d ago'},
      
      {'title': 'Cyber Legends', 'score': '15,680', 'rank': '#1', 'time': '3h ago'},
      {'title': 'Quantum Racing', 'score': '12,340', 'rank': '#3', 'time': '1d ago'},
      {'title': 'Space Warriors', 'score': '9,870', 'rank': '#5', 'time': '2d ago'},
      {'title': 'Mystic Realms', 'score': '8,500', 'rank': '#2', 'time': '1w ago'},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: games.length,
      itemBuilder: (context, index) {
        final game = games[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[700]!),
          ),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.games,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      game['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Score: ${game['score']} • Rank: ${game['rank']}',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: game['rank'] == '#1' ? Colors.amber : Colors.grey[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      game['rank']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    game['time']!,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAchievementsTab() {
    final achievements = [
      {'title': 'Speed Demon', 'desc': 'Complete 100 games in record time', 'earned': true, 'rarity': 'Legendary'},
      {'title': 'Perfect Score', 'desc': 'Achieve maximum score in any game', 'earned': true, 'rarity': 'Epic'},
      {'title': 'Tournament Champion', 'desc': 'Win 5 tournaments in a row', 'earned': true, 'rarity': 'Rare'},
      {'title': 'Social Butterfly', 'desc': 'Get 1000 followers', 'earned': false, 'rarity': 'Common'},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: achievements.length,
      itemBuilder: (context, index) {
        final achievement = achievements[index];
        final isEarned = achievement['earned'] as bool;
        final rarity = achievement['rarity'] as String;
        
        Color rarityColor = Colors.grey;
        switch (rarity) {
          case 'Legendary':
            rarityColor = Colors.orange;
            break;
          case 'Epic':
            rarityColor = Colors.purple;
            break;
          case 'Rare':
            rarityColor = Colors.blue;
            break;
          case 'Common':
            rarityColor = Colors.green;
            break;
        }
        
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12),
            border: isEarned 
                ? Border.all(color: rarityColor, width: 1)
                : Border.all(color: Colors.grey[700]!),
          ),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: isEarned 
                    ? rarityColor.withOpacity(0.3)
                    : Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.emoji_events,
                color: isEarned ? rarityColor : Colors.grey,
              ),
            ),
            title:Text(
                  achievement['title']! as String,
                  style: TextStyle(
                    color: isEarned ? Colors.white : Colors.grey[500],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ) ,
            subtitle: Text(
              achievement['desc']! as String,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 14,
              ),
            ),
            trailing: isEarned
                ? Icon(
                    Icons.check_circle,
                    color: rarityColor,
                  )
                : null,
          ),
        );
      },
    );
  }

  Widget _buildActivityTab() {
    final activities = [
      {'action': 'Completed', 'target': 'Cyber Legends', 'time': '2 hours ago', 'type': 'game'},
      {'action': 'Followed', 'target': 'SpeedRunner_Pro', 'time': '5 hours ago', 'type': 'social'},
      {'action': 'Earned', 'target': 'Speed Demon Achievement', 'time': '1 day ago', 'type': 'achievement'},
      {'action': 'Created', 'target': 'Epic Space Battle Story', 'time': '2 days ago', 'type': 'story'},
      {'action': 'Won', 'target': 'Weekly Tournament', 'time': '1 week ago', 'type': 'tournament'},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final activity = activities[index];
        IconData icon;
        Color iconColor;
        
        switch (activity['type']) {
          case 'game':
            icon = Icons.games;
            iconColor = Colors.blue;
            break;
          case 'social':
            icon = Icons.person_add;
            iconColor = Colors.green;
            break;
          case 'achievement':
            icon = Icons.emoji_events;
            iconColor = Colors.orange;
            break;
          case 'story':
            icon = Icons.auto_stories;
            iconColor = Colors.purple;
            break;
          case 'tournament':
            icon = Icons.emoji_events;
            iconColor = Colors.red;
            break;
          default:
            icon = Icons.circle;
            iconColor = Colors.grey;
        }
        
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 20,
              ),
            ),
            title: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.white, fontSize: 14),
                children: [
                  TextSpan(text: '${activity['action']} '),
                  TextSpan(
                    text: activity['target'],
                    style: TextStyle(
                      color: iconColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Text(
              activity['time']!,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12,
              ),
            ),
          ),
        );
      },
    );
  }

  void _showMoreOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[800],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),
            _buildOptionItem(Icons.block, 'Block User', isDestructive: true),
            _buildOptionItem(Icons.report, 'Report User', isDestructive: true),
            _buildOptionItem(Icons.share, 'Share Profile'),
            _buildOptionItem(Icons.link, 'Copy Profile Link'),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionItem(IconData icon, String title, {bool isDestructive = false}) {
    return ListTile(
      leading: Icon(
        icon,
        color: isDestructive ? Colors.red : Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isDestructive ? Colors.red : Colors.white,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${isDestructive ? '⚠️' : '✅'} $title'),
            backgroundColor: isDestructive ? Colors.red : Colors.green,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        );
      },
    );
  }
}