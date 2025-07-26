import 'package:auto_route/annotations.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_data_model.dart';
import 'package:symbal_fl/features/game/domain/engine/symbal_game.dart';

@RoutePage()
class PlayGamePage extends StatefulWidget {
  const PlayGamePage({super.key});

  @override
  State<PlayGamePage> createState() => _PlayGamePageState();
}

class _PlayGamePageState extends State<PlayGamePage> {
  Map<String, dynamic> _callLLMToGenerateGame() {
    return {
      "metadata": {"title": "Sample Platformer"},
      "world": {
        "orientation": "landscape",
        "bounds": {"width": 1200, "height": 600, "autoScale": true},
        "gravity": {"x": 0, "y": 980},
        "background": {"color": "#87CEEB"},
      },
      "entities": [
        {
          "id": "player",
          "tags": ["player"],
          "components": {
            "transform": {"x": 50, "y": 400},
            "sprite": {"asset": "hero.png", "width": 32, "height": 32},
            "physics": {"bodyType": "dynamic"},
            "collision": {"shape": "rectangle"},
            "movement": {"speed": 200, "jumpForce": 300, "canJump": true},
            "health": {"max": 3, "current": 3},
          },
        },
      ],

      "gameRules": {
        "winConditions": [
          {"type": "score", "value": 100},
        ],
        "loseConditions": [
          {"type": "playerDeath"},
        ],
      },
    };
  }

  SymbalGame? _game;
  bool isLoading = true;


  @override
  void initState() {
    super.initState();
_initializeGame();
  }

  Future<void> _initializeGame() async {
    _game = SymbalGame();

    // Set up game event listeners
    // _setupGameListeners();
    
    // Initialize the game with LLM-generated data
    await _game!.initializeGame(GameData.fromJson(_callLLMToGenerateGame()));
    
    setState(() {
      isLoading = false;
      // lives = widget.gameData.gameRules?.playerLives ?? 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(
                  "Gameplay to take place here",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              //
              //
              Container(
                child: GameWidget(game: _game!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
