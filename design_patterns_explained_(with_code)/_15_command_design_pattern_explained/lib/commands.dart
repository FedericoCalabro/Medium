// Command interface
import 'package:command_design_pattern/receiver.dart';

abstract class OrderCommand {
  void execute();
}

// Concrete Command: OrderPizzaCommand
class OrderPizzaCommand implements OrderCommand {
  Chef _chef;

  OrderPizzaCommand(this._chef);

  @override
  void execute() {
    _chef.preparePizza();
  }
}

// Concrete Command: CancelPizzaCommand
class CancelPizzaCommand implements OrderCommand {
  Chef _chef;

  CancelPizzaCommand(this._chef);

  @override
  void execute() {
    _chef.cancelPizza();
  }
}

// Concrete Command: OrderBurgerCommand
class OrderBurgerCommand implements OrderCommand {
  Chef _chef;

  OrderBurgerCommand(this._chef);

  @override
  void execute() {
    _chef.prepareBurger();
  }
}

// Concrete Command: CancelBurgerCommand
class CancelBurgerCommand implements OrderCommand {
  Chef _chef;

  CancelBurgerCommand(this._chef);

  @override
  void execute() {
    _chef.cancelBurger();
  }
}
