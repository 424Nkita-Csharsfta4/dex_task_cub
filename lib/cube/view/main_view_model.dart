import 'package:flutter/material.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:dex_task_flutter/cube/interface/button_strategy.dart';

class MainViewModel extends ChangeNotifier {
  Cube cube;
  ButtonStrategy leftButton;
  ButtonStrategy rightButton;
  ButtonStrategy upButton;
  ButtonStrategy downButton;

  MainViewModel(
    this.cube,
    this.leftButton,
    this.rightButton,
    this.upButton,
    this.downButton,
  );

 /// Метод для перемещения куба влево
 void moveLeft() {
  leftButton.execute(cube);
  notifyListeners();
}

/// Метод для перемещения куба вправо
void moveRight() {
  rightButton.execute(cube);
  notifyListeners();
}

/// Метод для перемещения куба вверх
void moveUp() {
  upButton.execute(cube);
  notifyListeners();
}

/// Метод для перемещения куба вниз
void moveDown() {
  downButton.execute(cube);
  notifyListeners();
}

}
