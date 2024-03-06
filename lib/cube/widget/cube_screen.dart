import 'package:flutter/material.dart';
import 'package:dex_task_flutter/cube/view/main_view_model.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';

class CubeScreen extends StatefulWidget {
  final MainViewModel viewModel;
  const CubeScreen({Key? key, required this.viewModel}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CubeScreenState createState() => _CubeScreenState();
}

class _CubeScreenState extends State<CubeScreen> {
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
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment: calculateAlignment(widget.viewModel.cube.position),
              child: ListenableBuilder(
                listenable: widget.viewModel,
                builder: (context, child) => const SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 4, 4),
                        ),
                      ),
                    ),
                  ),
                ),
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

  Alignment calculateAlignment(CubePosition position) {
    switch (position) {
      case CubePosition.center:
        return Alignment.center;
      case CubePosition.topLeft:
        return Alignment.topLeft;
      case CubePosition.topRight:
        return Alignment.topRight;
      case CubePosition.bottomLeft:
        return Alignment.bottomLeft;
      case CubePosition.bottomRight:
        return Alignment.bottomRight;
      default:
        // По умолчанию возвращается центральное выравнивание
        return Alignment.center;
    }
  }
}
