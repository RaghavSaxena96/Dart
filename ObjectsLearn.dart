import 'dart:math';

class Shape {
  double height = 0;
  double width = 0;
  String unit = "cms";

  static int num_shapes = 0;

  Shape() {
    this.height = 0;
    this.width = 0;
    Shape.num_shapes++;
  }

  Shape.fromHW(double h, double w) {
    this.height = h;
    this.width = w;
    Shape.num_shapes++;
  }

  Shape.fromLength(double length) {
    this.height = length;
    this.width = length;
    Shape.num_shapes++;
  }

  String get_unit() => unit;

  double area() {
    return height * width;
  }
}

class Circle extends Shape {
  @override
  double area() {
    if (this.width != 0) {
      return pi * pow(this.width / 2, 2);
    } else if (this.width != 0) {
      return pi * pow(this.height / 2, 2);
    } else
      return 0;
  }

  Circle() : super();

  Circle.fromLength(double n) : super.fromLength(n);
}

void main() {
  Shape sq1 = new Shape();
  Shape sq2 = new Shape.fromLength(5);
  Shape sq4 = new Shape.fromHW(3, 4);
}
