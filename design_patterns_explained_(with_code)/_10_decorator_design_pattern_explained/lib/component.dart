// Component interface representing the base Coffee
abstract class Coffee {
  String getDescription();
  double cost();
}

// Concrete component representing a simple coffee without any condiments
class SimpleCoffee implements Coffee {
  @override
  String getDescription() {
    return "Simple Coffee";
  }

  @override
  double cost() {
    return 1.0; // Cost of a simple coffee
  }
}
