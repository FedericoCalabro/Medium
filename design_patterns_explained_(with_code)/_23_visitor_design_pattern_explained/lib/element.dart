// Element: SpacecraftComponent (interface for spacecraft components)
import 'package:visitor_design_pattern/visitor.dart';

abstract class SpacecraftComponent {
  void accept(MaintenanceRobot visitor);
}

// Concrete Elements: Engine, SolarPanel, ControlSystem
class Engine implements SpacecraftComponent {
  @override
  void accept(MaintenanceRobot visitor) {
    visitor.visitEngine(this);
  }

  void doMaintenance() {
    print("Performing maintenance on the engine.");
  }
}

class SolarPanel implements SpacecraftComponent {
  @override
  void accept(MaintenanceRobot visitor) {
    visitor.visitSolarPanel(this);
  }

  void doMaintenance() {
    print("Performing maintenance on the solar panel.");
  }
}

class ControlSystem implements SpacecraftComponent {
  @override
  void accept(MaintenanceRobot visitor) {
    visitor.visitControlSystem(this);
  }

  void doMaintenance() {
    print("Performing maintenance on the control system.");
  }
}
