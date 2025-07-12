
// Game Story Card Widget
import 'package:flutter/material.dart';
import 'package:symbal_fl/features/play/domain/entities/game_story.dart';

class GameStoryCard extends StatelessWidget {
  final GameStory gameStory;
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
            Colors.black.withOpacity(0.8),
          ],
        ),
      ),
      child: Stack(
        children: [
          // Background image/video placeholder
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey[800],
            child: const Icon(
              Icons.games,
              size: 100,
              color: Colors.white24,
            ),
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
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    GameTag(text: gameStory.gameType),
                    const SizedBox(width: 8),
                    GameTag(text: gameStory.duration),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Navigate to game
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
                  _buildActionButton(Icons.favorite_outline, '12.5K'),
                  const SizedBox(height: 18),
                  _buildActionButton(Icons.share_outlined, 'Share'),
                  const SizedBox(height: 18),
                  _buildActionButton(Icons.bookmark_outline, 'Save'),
                ],
              ),
            ),
        ],
      ),
    );
  }
  
  Widget _buildActionButton(IconData icon, String label) {
    return InkWell(
      onTap: () {
        // Handle button tap
      },
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
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}