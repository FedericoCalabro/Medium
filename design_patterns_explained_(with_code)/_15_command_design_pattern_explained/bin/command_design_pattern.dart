import 'package:command_design_pattern/commands.dart';
import 'package:command_design_pattern/invoker.dart';
import 'package:command_design_pattern/receiver.dart';

void main() {
  // Create a Chef
  Chef chef = Chef();

  // Create commands
  OrderCommand orderPizza = OrderPizzaCommand(chef);
  OrderCommand orderBurger = OrderBurgerCommand(chef);
  OrderCommand cancelPizza = CancelPizzaCommand(chef);
  OrderCommand cancelBurger = CancelBurgerCommand(chef);

  // Create a Waiter
  Waiter waiter = Waiter();

  // Take orders
  waiter.takeOrder(orderPizza);
  waiter.takeOrder(cancelBurger);
  waiter.takeOrder(orderBurger);
  waiter.takeOrder(cancelPizza);

  // Place orders
  waiter.placeOrders();
}
