// Abstract Class: Cake
abstract class Cake {
  void prepareIngredients();
  void bake();
  void cool();
  void decorate();

  // Template method
  void bakeCake() {
    prepareIngredients();
    bake();
    cool();
    decorate();
  }
}
