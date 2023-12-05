import 'package:flutter/material.dart';
import 'package:jump_game/game/assets.dart';
import 'package:jump_game/game/flappy_bird_game.dart';

class MainMenuScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'mainMenu';
  const MainMenuScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();
    return GestureDetector(
      onTap: () {
        game.overlays.remove('mainMenu');
        game.resumeEngine();
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.menu), fit: BoxFit.cover)),
          child: Image.asset(Assets.message),
        ),
      ),
    );
  }
}
