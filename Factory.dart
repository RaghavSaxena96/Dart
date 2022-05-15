import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'Circle') {
      return Circle(2);
    } else {
      return Square(2);
    }
  }
  num get area;
}

class Circle implements Shape {
  int radius;

  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);

  @override
  String toString() => 'Circle Area is $area';
}

class Square implements Shape {
  int radius;

  Square(this.radius);

  @override
  num get area => radius * radius;

  @override
  String toString() => 'Square Area is $area';
}

void main() {
  final circle = Shape('Circle');
  final square = Shape('Square');
  print(circle);
  print(square);
}

