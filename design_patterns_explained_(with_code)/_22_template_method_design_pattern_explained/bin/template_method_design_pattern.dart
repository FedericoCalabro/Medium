import 'package:template_method_design_pattern/implementations.dart';

void main() {
  var chocolateCake = ChocolateCake();
  var vanillaCake = VanillaCake();

  // Bake a chocolate cake
  print("\nBaking a Chocolate Cake:");
  chocolateCake.bakeCake();

  // Bake a vanilla cake
  print("\nBaking a Vanilla Cake:");
  vanillaCake.bakeCake();
}
