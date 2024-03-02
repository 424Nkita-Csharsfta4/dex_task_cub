import 'package:dex_task_flutter/cube/interface/button_strategy.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';

class ButtonLeft implements ButtonStrategy {
  @override
  void execute(Cube cube) {
    switch (cube.position) {
      case CubePosition.topLeft:
      case CubePosition.centerLeft:
      case CubePosition.bottomLeft:
        break;
      default:
        cube.position = CubePosition.values[cube.position.index - 1];
    }
  }
}
