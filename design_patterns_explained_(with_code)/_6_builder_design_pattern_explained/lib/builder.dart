import 'package:builder_design_pattern/pizza.dart';

class PizzaBuilder {
  String? _dough;
  String? _sauce;
  String? _cheese;
  List<String> _toppings = [];

  PizzaBuilder setDough(String dough) {
    _dough = dough;
    return this;
  }

  PizzaBuilder setSauce(String sauce) {
    _sauce = sauce;
    return this;
  }

  PizzaBuilder setCheese(String cheese) {
    _cheese = cheese;
    return this;
  }

  PizzaBuilder addTopping(String topping) {
    _toppings.add(topping);
    return this;
  }

  Pizza build() {
    if (_dough == null || _sauce == null || _cheese == null) {
      throw Exception('Dough, sauce, and cheese must be set');
    }

    return Pizza(
      dough: _dough!,
      sauce: _sauce!,
      cheese: _cheese!,
      toppings: _toppings,
    );
  }
}