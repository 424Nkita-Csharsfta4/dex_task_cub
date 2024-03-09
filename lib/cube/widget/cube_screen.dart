import 'package:dex_task_flutter/cube/view/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:dex_task_flutter/cube/model/cube.dart';
import 'package:dex_task_flutter/cube/bloc/cube_bloc.dart';

class CubeScreen extends StatelessWidget {
  final MainViewModel viewModel;
  final CubeBloc bloc;

  const CubeScreen({Key? key, required this.viewModel, required this.bloc})
      : super(key: key);

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
              alignment: calculateAlignment(viewModel.cube.position),
              child: const SizedBox(
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
          SizedBox(
            height: 100,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: viewModel.moveUp,
                    child: const Icon(Icons.arrow_upward),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: viewModel.moveLeft,
                        child: const Icon(Icons.arrow_left),
                      ),
                      ElevatedButton(
                        onPressed: viewModel.moveRight,
                        child: const Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: viewModel.moveDown,
                    child: const Icon(Icons.arrow_downward),
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
      case CubePosition.topLeft:
        return Alignment.topLeft;
      case CubePosition.topCenter:
        return Alignment.topCenter;
      case CubePosition.topRight:
        return Alignment.topRight;
      case CubePosition.centerRight:
        return Alignment.centerRight;
      case CubePosition.center:
        return Alignment.center;
      case CubePosition.centerLeft:
        return Alignment.centerLeft;
      case CubePosition.bottomLeft:
        return Alignment.bottomLeft;
      case CubePosition.bottomCenter:
        return Alignment.bottomCenter;
      case CubePosition.bottomRight:
        return Alignment.bottomRight;
      default:
        return Alignment.center;
    }
  }
}
