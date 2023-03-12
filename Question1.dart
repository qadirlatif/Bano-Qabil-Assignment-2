import 'dart:math';
import 'dart:io';

void main() {
  var c1 = new Circle();
  print("Enter Radius of a Circle: ");
  double input = double.parse(stdin.readLineSync() as String);
  c1.setRadius = input;
  print("Entered Radius is : $input");
  double result = c1.circumference();
  print("Circumference of a circle is : $result");
}

class Circle {
  late double radius;
  set setRadius(double radius) {
    this.radius = radius;
  }

  double get getRadius {
    return radius;
  }

  double circumference() {
    return 2 * pi * radius;
  }
}
