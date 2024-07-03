// Handler interface
abstract class PurchasePower {
  late PurchasePower _successor;
  void setSuccessor(PurchasePower successor) {
    _successor = successor;
  }

  void processRequest(int amount);
}

// Concrete Handlers
class ManagerPower extends PurchasePower {
  @override
  void processRequest(int amount) {
    if (amount <= 1000) {
      print("Manager can approve purchase of \$${amount}");
    } else {
      print("Manager can't approve purchase of \$${amount}, forwarding request...");
      _successor.processRequest(amount);
    }
  }
}

class DirectorPower extends PurchasePower {
  @override
  void processRequest(int amount) {
    if (amount <= 5000) {
      print("Director can approve purchase of \$${amount}");
    } else {
      print("Director can't approve purchase of \$${amount}, forwarding request...");
      _successor.processRequest(amount);
    }
  }
}

class VicePresidentPower extends PurchasePower {
  @override
  void processRequest(int amount) {
    if (amount <= 10000) {
      print("Vice President can approve purchase of \$${amount}");
    } else {
      print("Vice President can't approve purchase of \$${amount}, forwarding request...");
      _successor.processRequest(amount);
    }
  }
}

class PresidentPower extends PurchasePower {
  @override
  void processRequest(int amount) {
    print("President can approve purchase of \$${amount}");
  }
}
