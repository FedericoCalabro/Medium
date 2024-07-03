// Context: TrafficLightController (the object whose behavior changes based on state)
import 'package:state_design_pattern/state.dart';

class TrafficLightController {
  late TrafficLightState _currentState;

  TrafficLightController() {
    // Initialize with a default state
    _currentState = RedLightState(this);
  }

  void setState(TrafficLightState state) {
    _currentState = state;
  }

  void requestChange() {
    _currentState.handleRequest();
  }
}
