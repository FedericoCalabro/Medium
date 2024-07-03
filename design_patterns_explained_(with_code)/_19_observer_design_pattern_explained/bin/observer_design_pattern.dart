import 'package:observer_design_pattern/observer.dart';
import 'package:observer_design_pattern/subject.dart';

void main() {
  // Create a weather station
  var weatherStation = ConcreteWeatherStation();

  // Create display units (observers)
  var display1 = DisplayUnit("Display 1");
  var display2 = DisplayUnit("Display 2");

  // Register observers with the weather station
  weatherStation.addObserver(display1);
  weatherStation.addObserver(display2);

  // Update temperature and notify observers
  weatherStation.setTemperature(25.5); // Both displays receive update
  weatherStation.setTemperature(28.0); // Both displays receive update

  // Remove an observer
  weatherStation.removeObserver(display1);

  // Update temperature and notify remaining observer
  weatherStation.setTemperature(30.2); // Only display2 receives update
}
