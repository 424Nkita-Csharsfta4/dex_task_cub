import 'package:dex_task_flutter/cube/interface/button_strategy.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';

/// В данной стратегии реализуется поведение кнопки "Влево"
class ButtonLeft implements ButtonStrategy {
  @override
  void execute(Cube cube) {
    switch (cube.position) {
      case CubePosition.centerLeft:
      case CubePosition.topLeft:
      case CubePosition.bottomLeft:
        // Не даем кубу сдвинуться влево,
        //если он уже находится на крайней левой позиции
        break;
      default:
        cube.position = CubePosition.values[cube.position.index - 1];
    }
  }
}
