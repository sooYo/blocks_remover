import 'dart:async';

import 'package:flame/components.dart' hide Block;
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

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
  }) : super(
          size: kBlockSize,
          position: gridPosition.xy,
        );

  /// To let other complements have chance calculate layout of Blocks
  static final kBlockSize = Vector2(50, 50);
  static final kBlockIconSize = Vector2(20, 20);

  final Block type;

  /// We need to know the z order of this Block
  final Vector3 gridPosition;

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load(type.icon);
  }

  @override
  void render(Canvas canvas) {
    final bgRect = size.toRect();
    final radius = Radius.circular(10);

    // Draw shadow of the block
    canvas.drawRRect(
      RRect.fromRectAndRadius(bgRect.translate(5, 5), radius),
      Paint()..color = Colors.black26,
    );

    // Draw the white background
    canvas.drawRRect(
      RRect.fromRectAndRadius(bgRect, radius),
      Paint()..color = Colors.white,
    );

    // Draw border
    canvas.drawRRect(
      RRect.fromRectAndRadius(bgRect, radius),
      Paint()
        ..strokeWidth = 2.0
        ..style = PaintingStyle.stroke
        ..color = Colors.grey.withValues(alpha: 0.5),
    );

    // Draw icon in the center
    if (sprite != null) {
      final spritePos = Vector2(
        (size.x - kBlockIconSize.x) * 0.5,
        (size.y - kBlockIconSize.y) * 0.5,
      );

      sprite?.render(canvas, size: kBlockIconSize, position: spritePos);
    }
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
