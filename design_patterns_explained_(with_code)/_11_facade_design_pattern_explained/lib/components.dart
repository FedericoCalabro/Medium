class CPU {
  void freeze() {
    print("CPU: Freezing...");
  }

  void jump(String position) {
    print("CPU: Jumping to $position");
  }

  void execute() {
    print("CPU: Executing...");
  }
}

class Memory {
  void load() {
    print("Memory: Loading data...");
  }
}

class HardDrive {
  void read(String sector, int size) {
    print("HardDrive: Reading from sector $sector, size: $size");
  }
}
