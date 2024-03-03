import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:dex_task_flutter/cube/interface/button_strategy.dart';

/// В данной стратегии реализуется поведение кнопки Вправо
class ButtonDown implements ButtonStrategy {
  @override
  void execute(Cube cube) {
    switch (cube.position) {
      case CubePosition.bottomLeft:
      case CubePosition.bottomCenter:
      case CubePosition.bottomRight:
        break;
      default:
        cube.position = CubePosition.values[cube.position.index + 3];
    }
  }
}
