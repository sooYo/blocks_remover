import 'dart:async';

import 'package:flame/game.dart';

import '../models/block.dart';
import 'block.dart';

/// game
/// flame_learn
///
/// Created by sooyo on 2025/1/15
/// Copyright (c) 2025 Heyooh Technology Co.,Ltd. All rights reserved.
///

class BlockRemoverGame extends FlameGame {
  // Indicates weather the game world has been already initialized.
  var _isAlreadyLoaded = false;

  @override
  FutureOr<void> onLoad() async {
    if (_isAlreadyLoaded) {
      return;
    }

    for (var idx = 0; idx < Block.values.length; ++idx) {
      final blockComponent = BlockComponent(
        Block.of(idx),
        gridPosition: Vector3(
          80 + (60.0 * (idx % 4)),
          100 + (60.0 * (idx / 4).floor()),
          1,
        ),
      );

      add(blockComponent);
    }

    _isAlreadyLoaded = true;
  }
}
