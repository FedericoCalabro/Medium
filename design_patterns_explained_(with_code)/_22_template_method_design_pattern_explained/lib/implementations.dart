// Concrete Classes: ChocolateCake, VanillaCake
import 'package:template_method_design_pattern/template_method.dart';

class ChocolateCake extends Cake {
  @override
  void prepareIngredients() {
    print("Preparing chocolate cake ingredients...");
  }

  @override
  void bake() {
    print("Baking chocolate cake...");
  }

  @override
  void cool() {
    print("Cooling chocolate cake...");
  }

  @override
  void decorate() {
    print("Decorating chocolate cake...");
  }
}

class VanillaCake extends Cake {
  @override
  void prepareIngredients() {
    print("Preparing vanilla cake ingredients...");
  }

  @override
  void bake() {
    print("Baking vanilla cake...");
  }

  @override
  void cool() {
    print("Cooling vanilla cake...");
  }

  @override
  void decorate() {
    print("Decorating vanilla cake...");
  }
}
