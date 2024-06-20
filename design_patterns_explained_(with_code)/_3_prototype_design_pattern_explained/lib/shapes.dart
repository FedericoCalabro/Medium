abstract class Shape {
  String type;

  Shape(this.type);

  // Abstract method to clone the shape
  Shape clone();
}

class Circle extends Shape {
  int radius;

  Circle(this.radius) : super('Circle');

  // Implement the clone method to return a new instance of Circle
  @override
  Circle clone() {
    return Circle(radius);
  }

  @override
  String toString() {
    return 'Circle with radius: $radius';
  }
}

class Rectangle extends Shape {
  int width, height;

  Rectangle(this.width, this.height) : super('Rectangle');

  // Implement the clone method to return a new instance of Rectangle
  @override
  Rectangle clone() {
    return Rectangle(width, height);
  }

  @override
  String toString() {
    return 'Rectangle with width: $width and height: $height';
  }
}