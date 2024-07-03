// ignore_for_file: unused_field

// Strategy: PaymentStrategy (interface for payment methods)
abstract class PaymentStrategy {
  void pay(double amount);
}

// Concrete Strategies: CreditCardPayment, PayPalPayment, BankTransferPayment
class CreditCardPayment implements PaymentStrategy {
  late String _cardNumber;
  late String _cvv;
  late String _expiryDate;

  CreditCardPayment(this._cardNumber, this._cvv, this._expiryDate);

  @override
  void pay(double amount) {
    print("Paid $amount using Credit Card.");
  }
}

class PayPalPayment implements PaymentStrategy {
  late String _email;
  late String _password;

  PayPalPayment(this._email, this._password);

  @override
  void pay(double amount) {
    print("Paid $amount using PayPal.");
  }
}

class BankTransferPayment implements PaymentStrategy {
  late String _bankAccount;
  late String _routingNumber;

  BankTransferPayment(this._bankAccount, this._routingNumber);

  @override
  void pay(double amount) {
    print("Paid $amount using Bank Transfer.");
  }
}
