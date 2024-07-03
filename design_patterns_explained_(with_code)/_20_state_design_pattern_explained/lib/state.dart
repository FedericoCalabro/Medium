// State: TrafficLightState (interface for encapsulating behavior related to a state)
import 'package:state_design_pattern/context.dart';

abstract class TrafficLightState {
  // ignore: unused_field
  late TrafficLightController _controller;

  TrafficLightState(this._controller);

  void handleRequest();
}

// Concrete State: RedLightState
class RedLightState implements TrafficLightState {
  TrafficLightController _controller;

  RedLightState(this._controller);

  @override
  void handleRequest() {
    print("Turning from red to green");
    _controller.setState(GreenLightState(_controller));
  }
}

// Concrete State: GreenLightState
class GreenLightState implements TrafficLightState {
  TrafficLightController _controller;

  GreenLightState(this._controller);

  @override
  void handleRequest() {
    print("Turning from green to yellow");
    _controller.setState(YellowLightState(_controller));
  }
}

// Concrete State: YellowLightState
class YellowLightState implements TrafficLightState {
  TrafficLightController _controller;

  YellowLightState(this._controller);

  @override
  void handleRequest() {
    print("Turning from yellow to red");
    _controller.setState(RedLightState(_controller));
  }
}
