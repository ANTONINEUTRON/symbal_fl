
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/app/cubits/app_cubit.dart';
import 'package:symbal_fl/gen/assets.gen.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({
    super.key, 
    required this.startWithSuggestion,
  });

  final Function(String) startWithSuggestion;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Game History Button
          _buildGameHistory(context).addSpacing(bottom: 24),
          
          // AI Game Creator Logo
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              
              // shape: BoxShape.circle,
              
            ),
            child: Assets.brand.symbalLogo.image(
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
            ).addSpacing(bottom: 24),
          
          // Welcome Title
          const Text(
            'Your Game Ideas\nCome to Life Here 🎮',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ).addSpacing(bottom: 8),
          
          // Subtitle
          Text(
            'Describe any game concept and I\'ll build it for you',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          
          // const SizedBox(height: 40),
          
          // // Suggestion Cards
          // const Text(
          //   'Try these examples:',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 18,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          
          // const SizedBox(height: 20),
          
          // _buildSuggestionCard(
          //   '🏰 Medieval Adventure',
          //   'A knight\'s quest to save a magical kingdom from an ancient curse',
          //   Icons.castle,
          // ),
          
          // const SizedBox(height: 12),
          
          // _buildSuggestionCard(
          //   '🚀 Space Exploration',
          //   'Discover alien worlds and solve cosmic mysteries in deep space',
          //   Icons.rocket_launch,
          // ),
          
          // const SizedBox(height: 12),
          
          // _buildSuggestionCard(
          //   '🧩 Mystery Puzzle',
          //   'Uncover clues and solve riddles in a mysterious haunted mansion',
          //   Icons.search,
          // ),
          
          // const SizedBox(height: 12),
          
          // _buildSuggestionCard(
          //   '🌊 Ocean Adventure',
          //   'Explore underwater worlds and discover hidden treasures',
          //   Icons.waves,
          // ),
          
          // const SizedBox(height: 40),
          
        ],
      ),
    );
  }

  Widget _buildGameHistory(BuildContext context) {
    return TextButton.icon(
          onPressed: () {
            // Navigate to game history
            context.read<AppCubit>().setAlertMessage("🎮 Game History - Coming Soon!");
          },
          icon: const Icon(Icons.history, color: Colors.blue),
          label: const Text(
            'View Previous Games',
            style: TextStyle(color: Colors.blue),
          ),
        );
  }

  
  Widget _buildSuggestionCard(String title, String description, IconData icon) {
    return GestureDetector(
      onTap: () => startWithSuggestion(description),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[700]!),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: Colors.purple,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[600],
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}

