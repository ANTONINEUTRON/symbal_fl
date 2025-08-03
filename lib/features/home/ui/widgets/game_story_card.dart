import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';

class GameStoryCard extends StatelessWidget {
  final GameModel gameStory;
  final bool isActive;

  const GameStoryCard({
    super.key,
    required this.gameStory,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple.withOpacity(0.3),
            Theme.of(context).scaffoldBackgroundColor,
          ],
        ),
      ),
      child: Stack(
        children: [
          // Background image/video placeholder
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: const Icon(Icons.games, size: 100, color: Colors.white24),
          ),

          // Game info overlay
          Positioned(
            left: 16,
            right: 80,
            bottom: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  gameStory.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  gameStory.description,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    GameTag(text: "1 mins").addSpacing(right: 8),
                    GameTag(text: "${14} plays"),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    context.router.push(PlayGameRoute(
                      gameDataModel: GameDataModel.empty(),
                    ));
                  },
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Play Now'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          // Right side action buttons
          Positioned(
            right: 16,
            bottom: 40,
            child: Column(
              children: [
                GameCardActionBtn(icon: Icons.favorite_outline, label: '12.5K'),
                const SizedBox(height: 18),
                GameCardActionBtn(
                  icon: Icons.share_outlined,
                  label: 'Share',
                  onTap: () {
                    SharePlus.instance.share(
                      ShareParams(text: "Sharing from Symbal"),
                    );
                  },
                ),
                const SizedBox(height: 18),
                GameCardActionBtn(
                  icon: Icons.more_vert,
                  label: 'More',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (context) {
                        return GameCardMoreOptions();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GameCardMoreOptions extends StatelessWidget {
  const GameCardMoreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              context.router.push(const ViewProfileRoute());
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border),
            title: const Text('Save'),
            onTap: () {
              // TODO: Save action
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.block_sharp),
            title: const Text('Stop Showing'),
            onTap: () {
              // TODO: Stop showing action
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.flag_outlined),
            title: Text('Report', style: TextStyle(color: Colors.red)),
            onTap: () {
              // TODO: Report action
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class GameCardActionBtn extends StatelessWidget {
  const GameCardActionBtn({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });
  final IconData icon;
  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 16),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class GameTag extends StatelessWidget {
  const GameTag({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}
