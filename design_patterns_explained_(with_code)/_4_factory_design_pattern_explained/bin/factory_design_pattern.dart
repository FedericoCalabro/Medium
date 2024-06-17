
import 'package:factory_design_pattern/animals.dart';
import 'package:factory_design_pattern/factory.dart';

void main() {
  // Create a Dog using the factory
  Animal dog = AnimalFactory.createAnimal('dog');
  dog.speak(); // Output: Woof! Woof!

  // Create a Cat using the factory
  Animal cat = AnimalFactory.createAnimal('cat');
  cat.speak(); // Output: Meow! Meow!

  // Trying to create an unknown animal
  try {
    Animal unknown = AnimalFactory.createAnimal('lion');
    unknown.speak();
  } catch (e) {
    print(e); // Output: Exception: Unknown animal type: lion
  }
}

