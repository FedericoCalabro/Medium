import 'package:facade_design_pattern/components.dart';

class ComputerFacade {
  final CPU cpu;
  final Memory memory;
  final HardDrive hardDrive;

  ComputerFacade(this.cpu, this.memory, this.hardDrive);

  void start() {
    cpu.freeze();
    memory.load();
    hardDrive.read("BOOT_SECTOR", 120);
    cpu.jump("BOOT_ADDRESS");
    cpu.execute();
  }

  void shutdown() {
    cpu.freeze();
    memory.load(); // Clear memory
    cpu.execute(); // Halt CPU
    print("Computer is shut down");
  }
}
