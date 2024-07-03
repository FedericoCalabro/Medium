import 'package:visitor_design_pattern/element.dart';
import 'package:visitor_design_pattern/visitor.dart';

void main() {
  var spacecraft = [
    Engine(),
    SolarPanel(),
    ControlSystem(),
  ];

  var repairRobot = RepairRobot();

  // Perform maintenance on each spacecraft component
  spacecraft.forEach((component) {
    component.accept(repairRobot);
    print('');
  });
}
