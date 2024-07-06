import 'package:decorator_design_pattern/component.dart';
import 'package:decorator_design_pattern/decorators.dart';

void main() {
  // Create a simple coffee
  Coffee coffee = SimpleCoffee();
  print("Cost: \$${coffee.cost()}"); // Output: Cost: $1.0
  print("Description: ${coffee.getDescription()}"); // Output: Description: Simple Coffee

  // Add milk to the coffee using decorator
  coffee = MilkDecorator(coffee);
  print("Cost: \$${coffee.cost()}"); // Output: Cost: $1.5
  print("Description: ${coffee.getDescription()}"); // Output: Description: Simple Coffee, with Milk

  // Add sugar to the coffee using decorator
  coffee = SugarDecorator(coffee);
  print("Cost: \$${coffee.cost()}"); // Output: Cost: $1.7
  print("Description: ${coffee.getDescription()}"); // Output: Description: Simple Coffee, with Milk, with Sugar
}
