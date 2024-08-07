import 'package:chain_of_responsability_design_pattern/chain_of_responsability.dart';

void main() {
  // Create chain of responsibility
  var manager = ManagerPower();
  var director = DirectorPower();
  var vp = VicePresidentPower();
  var president = PresidentPower();

  manager.setSuccessor(director);
  director.setSuccessor(vp);
  vp.setSuccessor(president);

  // Process purchase requests
  print("Request of 500");
  manager.processRequest(500); // Manager
  print("\nRequest of 8000");
  manager.processRequest(20000); // Mangager -> Director -> Vice President -> President
}
