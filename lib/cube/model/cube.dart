///Позиции для куба
enum CubePosition {
  topLeft,
  topCenter,
  topRight,
  centerRight,
  center,
  centerLeft,
  bottomLeft,
  bottomCenter,
  bottomRight,
}

///Главный класс куб
class Cube {
  ///Позиция куба
  CubePosition position;

  Cube(this.position);
}
