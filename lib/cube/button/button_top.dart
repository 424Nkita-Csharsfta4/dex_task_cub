// Стратегия для кнопки "Вверх"
import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:dex_task_flutter/cube/interface/button_strategy.dart';

class ButtonUp implements ButtonStrategy {
  @override
  void execute(Cube cube) {
    switch (cube.position) {
      case CubePosition.topLeft:
      case CubePosition.topCenter:
      case CubePosition.topRight:
        break;
      default:
        cube.position = CubePosition.values[cube.position.index - 3];
    }
  }
}
