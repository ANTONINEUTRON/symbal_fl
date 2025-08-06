import 'package:flutter/material.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';
import 'package:symbal_fl/features/profile/ui/widgets/game_card.dart';

class GameHistoryItem extends StatelessWidget {
  final List<GameModel> games;
  final bool isDeployed;

  const GameHistoryItem({super.key, required this.games, required this.isDeployed});

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