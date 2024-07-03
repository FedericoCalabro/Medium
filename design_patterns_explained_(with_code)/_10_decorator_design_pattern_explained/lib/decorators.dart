// Decorator abstract class that implements the Coffee interface
import 'package:decorator_design_pattern/coffee.dart';

abstract class CoffeeDecorator implements Coffee {
  Coffee _coffee;

  CoffeeDecorator(this._coffee);

  @override
  String getDescription() {
    return _coffee.getDescription();
  }

  @override
  double cost() {
    return _coffee.cost();
  }
}

class MilkDecorator extends CoffeeDecorator {
  MilkDecorator(Coffee coffee) : super(coffee);

  @override
  String getDescription() {
    return super.getDescription() + ", with Milk";
  }

  @override
  double cost() {
    return super.cost() + 0.5; // Additional cost for milk
  }
}

// Concrete decorator adding sugar to the coffee
class SugarDecorator extends CoffeeDecorator {
  SugarDecorator(Coffee coffee) : super(coffee);

  @override
  String getDescription() {
    return super.getDescription() + ", with Sugar";
  }

  @override
  double cost() {
    return super.cost() + 0.2; // Additional cost for sugar
  }
}
