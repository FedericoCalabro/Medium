class Pizza {
  String dough;
  String sauce;
  String cheese;
  List<String> toppings;

  Pizza({
    required this.dough,
    required this.sauce,
    required this.cheese,
    required this.toppings,
  });

  @override
  String toString() {
    return 'Pizza with $dough dough, $sauce sauce, $cheese cheese, and toppings: $toppings';
  }
}