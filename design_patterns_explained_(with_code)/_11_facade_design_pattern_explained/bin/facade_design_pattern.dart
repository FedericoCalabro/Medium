import 'package:facade_design_pattern/components.dart';
import 'package:facade_design_pattern/facade.dart';

void main() {
  // Initialize subsystem components
  CPU cpu = CPU();
  Memory memory = Memory();
  HardDrive hardDrive = HardDrive();

  // Create a computer facade
  ComputerFacade computer = ComputerFacade(cpu, memory, hardDrive);

  // Start the computer using the facade
  print("Starting computer...");
  computer.start();
  print("Computer started successfully.");

  // Shut down the computer using the facade
  print("\nShutting down computer...");
  computer.shutdown();
}
