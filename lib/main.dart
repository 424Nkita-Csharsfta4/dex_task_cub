import 'package:flutter/material.dart';
import 'package:dex_task_flutter/cube/button/button_top.dart';
import 'package:dex_task_flutter/cube/view/main_view_model.dart';
import 'package:dex_task_flutter/cube/button/button_down.dart';
import 'package:dex_task_flutter/cube/button/button_left.dart';
import 'package:dex_task_flutter/cube/button/button_right.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Создаем экземпляр куба и стратегий кнопок
    final cube = Cube(CubePosition.center);
    final leftButton = ButtonLeft();
    final rightButton = ButtonRight();
    final upButton = ButtonUp();
    final downButton = ButtonDown();

    // Создаем экземпляр MainViewModel, передавая куб и стратегии кнопок
    final mainViewModel = MainViewModel(
      cube,
      leftButton,
      rightButton,
      upButton,
      downButton,
    );

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(viewModel: mainViewModel),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final MainViewModel viewModel;
  const MyHomePage({Key? key, required this.viewModel}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Движение куба'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
              
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.viewModel.moveLeft();
                      });
                    },
                    child: const Icon(Icons.arrow_left),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.viewModel.moveUp();
                      });
                    },
                    child: const Icon(Icons.arrow_upward),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.viewModel.moveDown();
                      });
                    },
                    child: const Icon(Icons.arrow_downward),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.viewModel.moveRight();
                      });
                    },
                    child: const Icon(Icons.arrow_right),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
