import 'dart:async';
import 'package:dex_task_flutter/cube/model/cube.dart';

class CubeBloc {
  /// Контроллер для управления потоком позиции куба
  final _cubePositionController = StreamController<CubePosition>();

  /// Поток для прослушивания изменений позиции куба
  Stream<CubePosition> get cubePositionStream => _cubePositionController.stream;

  ///Закрытия контроллера потока, когда он больше не нужен
  void dispose() {
    _cubePositionController.close();
  }

  /// Перемещение куба влево
  void moveLeft() {
    _cubePositionController.sink.add(CubePosition.topLeft);
  }

  /// Перемещение куба вправо
  void moveRight() {
    _cubePositionController.sink.add(CubePosition.topRight);
  }

  /// Перемещение куба вверх
  void moveUp() {
    _cubePositionController.sink.add(CubePosition.bottomLeft);
  }

  /// Перемещение куба вниз
  void moveDown() {
    _cubePositionController.sink.add(CubePosition.bottomRight);
  }
}
