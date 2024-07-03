// Visitor: MaintenanceRobot (interface for maintenance tasks)
import 'package:visitor_design_pattern/element.dart';

abstract class MaintenanceRobot {
  void visitEngine(Engine engine);
  void visitSolarPanel(SolarPanel solarPanel);
  void visitControlSystem(ControlSystem controlSystem);
}

// Concrete Visitor: RepairRobot (performs repair tasks)
class RepairRobot implements MaintenanceRobot {
  @override
  void visitEngine(Engine engine) {
    print("Repairing the engine.");
    engine.doMaintenance();
  }

  @override
  void visitSolarPanel(SolarPanel solarPanel) {
    print("Repairing the solar panel.");
    solarPanel.doMaintenance();
  }

  @override
  void visitControlSystem(ControlSystem controlSystem) {
    print("Repairing the control system.");
    controlSystem.doMaintenance();
  }
}
