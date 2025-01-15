import 'dart:async';

import 'package:flame/components.dart' hide Block;
import 'package:flame/events.dart';

import '../models/block.dart';

/// block
/// flame_learn
///
/// Created by sooyo on 2025/1/14
/// Copyright (c) 2025 Heyooh Technology Co.,Ltd. All rights reserved.
///

/// The Block UI in the game
class BlockComponent extends SpriteComponent with TapCallbacks {
  BlockComponent(
    this.type, {
    required this.gridPosition,
    super.size,
  });

  final Block type;

  /// We need to know the z order of this Block
  final Vector3 gridPosition;

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load(
      type.icon,
    );

    size = Vector2(50, 50);
    position = gridPosition.xy;
  }

  @override
  void onTapDown(TapDownEvent event) {
    print('$type tapped down');
  }

  @override
  void onTapUp(TapUpEvent event) {
    print('$type tapped up');
  }
}
