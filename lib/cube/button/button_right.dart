import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:dex_task_flutter/cube/interface/button_strategy.dart';

/// В данной стратегии реализуется поведение кнопки "Вправо".
class ButtonRight implements ButtonStrategy {
  @override
  void execute(Cube cube) {
    switch (cube.position) {
      case CubePosition.centerRight:
      case CubePosition.topRight:
      case CubePosition.bottomRight:
        // Не даем кубу сдвинуться вправо,
        //если он уже находится на крайней правой позиции
        break;
      default:
        cube.position = CubePosition.values[cube.position.index + 1];
    }
  }
}
