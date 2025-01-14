/// block
/// flame_learn
///
/// Created by sooyo on 2025/1/14
/// Copyright (c) 2025 Heyooh Technology Co.,Ltd. All rights reserved.
///

/// This is the representation of blocks displayed on the screen,
/// combined by an unique ID and the corresponding icon.
final class Block {
  const Block(this.id)
      : assert(
          id >= 0 && id < _kIcons.length,
          'Valid block ID is within [0, ${_kIcons.length - 1}]',
        );

  /// The ID of Block shall be the index of corresponding icon
  static const _kIcons = <String>[
    'bull',
    'ghost',
    'medicine_kit',
    'rooster',
    'spanner',
    'chair',
    'hamburger',
    'motorcycle',
    'shovel',
    'vehicle',
    'donut',
    'kettle',
    'pliers',
    'snake',
  ];

  final int id;

  /// [id] is just the index of icon
  String get icon => _kIcons[id];
}
