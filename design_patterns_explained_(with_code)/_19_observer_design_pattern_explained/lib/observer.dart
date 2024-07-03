// Observer: Observer (defines the interface for receiving updates)
abstract class Observer {
  void update(double temperature);
}

// Concrete Observer: DisplayUnit (displays the temperature)
class DisplayUnit implements Observer {
  String _name;

  DisplayUnit(this._name);

  @override
  void update(double temperature) {
    print("$_name Display: Temperature is $temperature degrees Celsius");
  }
}
