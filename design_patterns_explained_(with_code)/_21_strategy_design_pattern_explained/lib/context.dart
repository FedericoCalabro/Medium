// Context: ShoppingCart (uses a PaymentStrategy)
import 'package:strategy_design_pattern/strategy.dart';

class ShoppingCart {
  late PaymentStrategy _paymentStrategy;

  void setPaymentStrategy(PaymentStrategy strategy) {
    _paymentStrategy = strategy;
  }

  void checkout(double amount) {
    _paymentStrategy.pay(amount);
  }
}
