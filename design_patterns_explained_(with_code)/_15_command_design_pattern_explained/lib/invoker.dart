// Invoker: Waiter (takes orders and passes them to the chef)
import 'package:command_design_pattern/commands.dart';

class Waiter {
  List<OrderCommand> _orders = [];

  void takeOrder(OrderCommand order) {
    _orders.add(order);
  }

  void placeOrders() {
    for (var order in _orders) {
      order.execute();
    }
    _orders.clear();
  }
}
