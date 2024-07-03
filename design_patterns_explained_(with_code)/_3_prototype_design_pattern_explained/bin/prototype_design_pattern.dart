import 'package:prototype_design_pattern/prototype.dart';

void main() {
  // Create instances of Circle and Rectangle
  Circle circle1 = Circle(10);
  Rectangle rect1 = Rectangle(20, 30);

  // Clone the shapes
  Circle circle2 = circle1.clone();
  Rectangle rect2 = rect1.clone();

  // Modify the cloned shapes
  circle2.radius = 15;
  rect2.width = 25;

  // Print the original and cloned shapes
  print(circle1); // Output: Circle with radius: 10
  print(circle2); // Output: Circle with radius: 15
  print(rect1); // Output: Rectangle with width: 20 and height: 30
  print(rect2); // Output: Rectangle with width: 25 and height: 30
}
