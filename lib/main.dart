import 'package:dex_task_flutter/cube/button/button_down.dart';
import 'package:dex_task_flutter/cube/button/button_left.dart';
import 'package:dex_task_flutter/cube/button/button_right.dart';
import 'package:dex_task_flutter/cube/button/button_top.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:dex_task_flutter/cube/view/main_view_model.dart';
import 'package:dex_task_flutter/cube/widget/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:dex_task_flutter/cube/login.dart';
import 'package:dex_task_flutter/cube/widget/cube_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cube = Cube(CubePosition.center);
    final leftButton = ButtonLeft();
    final rightButton = ButtonRight();
    final upButton = ButtonUp();
    final downButton = ButtonDown();

    final mainViewModel = MainViewModel(
      cube,
      leftButton,
      rightButton,
      upButton,
      downButton,
    );

    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const MenuScreen());
          case '/cube':
            return MaterialPageRoute(
              builder: (context) => CubeScreen(viewModel: mainViewModel),
            );
          case '/login':
            return MaterialPageRoute(builder: (context) => const LoginScreen());
          default:
            return MaterialPageRoute(
              builder: (context) => const Scaffold(
                body: Center(
                  child: Text('Page not found'),
                ),
              ),
            );
        }
      },
      initialRoute: '/',
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (context) => MainViewModel(
            cube,
            leftButton,
            rightButton,
            upButton,
            downButton,
          ),
          child: child,
        );
      },
    );
  }
}
