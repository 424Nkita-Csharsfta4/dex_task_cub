// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:dex_task_flutter/cube/interface/button_strategy.dart';

class MainViewModel extends ChangeNotifier {
  ///Экземпляр куба
  Cube cube;

  /// Стратегия для кнопки влево
  ButtonStrategy leftButton;

  /// Стратегия для кнопки вправо
  ButtonStrategy rightButton;

  /// Стратегия для кнопки вверх
  ButtonStrategy upButton;

  /// Стратегия для кнопки вниз
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
