import 'package:state_design_pattern/context.dart';

void main() {
  var controller = TrafficLightController();

  // Simulate traffic light sequence
  controller.requestChange(); // Red to Green
  controller.requestChange(); // Green to Yellow
  controller.requestChange(); // Yellow to Red
}
