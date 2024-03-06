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

  void moveLeft() {
    leftButton.execute(cube);
    notifyListeners();
  }

  void moveRight() {
    rightButton.execute(cube);
    notifyListeners();
  }

  void moveUp() {
    upButton.execute(cube);
    notifyListeners();
  }

  void moveDown() {
    downButton.execute(cube);
    notifyListeners();
  }
}
