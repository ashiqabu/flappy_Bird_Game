import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:jump_game/game/assets.dart';
import 'package:jump_game/game/flappy_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();

  @override
  Future<void> onLoad() async {
    final backGround = await Flame.images.load(Assets.backgorund);
    size = gameRef.size;
    sprite = Sprite(backGround);
  }
}
