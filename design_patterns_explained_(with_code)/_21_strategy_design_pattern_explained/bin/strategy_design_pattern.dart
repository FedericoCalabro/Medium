import 'package:strategy_design_pattern/context.dart';
import 'package:strategy_design_pattern/strategy.dart';

void main() {
  var cart = ShoppingCart();

  // Choose payment strategy at runtime
  cart.setPaymentStrategy(CreditCardPayment("1234 5678 9012 3456", "123", "12/25"));
  cart.checkout(100.0);

  cart.setPaymentStrategy(PayPalPayment("example@example.com", "password"));
  cart.checkout(200.0);

  cart.setPaymentStrategy(BankTransferPayment("1234567890", "123456789"));
  cart.checkout(300.0);
}
