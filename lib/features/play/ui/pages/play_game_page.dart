import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PlayGamePage extends StatelessWidget {
  const PlayGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text(
            "Gameplay to take place here",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
