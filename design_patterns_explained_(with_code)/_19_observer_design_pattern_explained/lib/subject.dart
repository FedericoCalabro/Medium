// Subject: WeatherStation (the object being observed)
import 'package:observer_design_pattern/observer.dart';

abstract class WeatherStation {
  void addObserver(Observer observer);
  void removeObserver(Observer observer);
  void notifyObservers();
}

// Concrete Subject: ConcreteWeatherStation
class ConcreteWeatherStation implements WeatherStation {
  late double _temperature;
  List<Observer> _observers = [];

  double getTemperature() {
    return _temperature;
  }

  void setTemperature(double temperature) {
    _temperature = temperature;
    notifyObservers();
  }

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  @override
  void notifyObservers() {
    for (var observer in _observers) {
      observer.update(_temperature);
    }
  }
}
