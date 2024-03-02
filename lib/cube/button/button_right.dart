import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:dex_task_flutter/cube/interface/button_strategy.dart';

class ButtonRight implements ButtonStrategy {
  @override
  void execute(Cube cube) {
    switch (cube.position) {
      case CubePosition.topRight:
      case CubePosition.centerRight:
      case CubePosition.bottomRight:
        break;
      default:
        cube.position = CubePosition.values[cube.position.index + 1];
    }
  }
}
