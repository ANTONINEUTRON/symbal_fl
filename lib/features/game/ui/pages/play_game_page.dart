import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart';
import 'package:symbal_fl/features/game/ui/engine/symbal_rendering_engine.dart';

@RoutePage()
class PlayGamePage extends StatefulWidget {
  const PlayGamePage({super.key, required this.gameDataModel});
  final GameDataModel gameDataModel;

  @override
  State<PlayGamePage> createState() => _PlayGamePageState();
}

class _PlayGamePageState extends State<PlayGamePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //
              //
              Container(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SymbalRenderingEngine(
                    gameToBeRendered: widget.gameDataModel.renderableContent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}
