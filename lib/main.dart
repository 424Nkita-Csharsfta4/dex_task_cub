import 'package:dex_task_flutter/cube/button/button_down.dart';
import 'package:dex_task_flutter/cube/button/button_left.dart';
import 'package:dex_task_flutter/cube/button/button_right.dart';
import 'package:dex_task_flutter/cube/button/button_top.dart';
import 'package:dex_task_flutter/cube/widget/cube_screen.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:flutter/material.dart';
import 'package:dex_task_flutter/cube/view/main_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Создаем экземпляр куба
    final cube = Cube(CubePosition.center);
    final leftButton = ButtonLeft();
    final rightButton = ButtonRight();
    final upButton = ButtonUp();
    final downButton = ButtonDown();

    /// Создаем экземпляр MainViewModel
    final mainViewModel = MainViewModel(
      cube,
      leftButton,
      rightButton,
      upButton,
      downButton,
    );

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
            .copyWith(secondary: Colors.red),
      ),
      // Передаем viewModel в CubeScreen
      home: CubeScreen(viewModel: mainViewModel),
    );
  }
}
