import 'package:flame_learn/utils/list_ext.dart';

/// block
/// flame_learn
///
/// Created by sooyo on 2025/1/14
/// Copyright (c) 2025 Heyooh Technology Co.,Ltd. All rights reserved.
///

/// This is the representation of blocks displayed on the screen
enum Block {
  bull(0),
  chair(1),
  donut(2),
  ghost(3),
  hamburger(4),
  kettle(5),
  medicineKit(6),
  motorcycle(7),
  pliers(8),
  rooster(9),
  shovel(10),
  spanner(11),
  vehicle(12);

  const Block(this.id);

  /// Find the [Block], if id is invalid, [none] shall be returned
  static Block of(int id) => Block.values.safe(at: id) ?? Block.bull;

  final int id;

  String get icon => '$name.png';

  bool get isValid => id >= 0 && id < Block.values.length;
}
