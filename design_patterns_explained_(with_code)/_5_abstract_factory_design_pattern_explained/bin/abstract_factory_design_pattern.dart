
import 'package:abstract_factory_design_pattern/abstract_factory.dart';
import 'package:abstract_factory_design_pattern/animals.dart';
import 'package:abstract_factory_design_pattern/toys.dart';

void main() {
  // Create a DogFactory
  AnimalFactory dogFactory = DogFactory();
  Animal dog = dogFactory.createAnimal();
  Toy dogToy = dogFactory.createToy();
  dog.speak(); // Output: Woof! Woof!
  dogToy.play(); // Output: Playing with a dog toy!

  // Create a CatFactory
  AnimalFactory catFactory = CatFactory();
  Animal cat = catFactory.createAnimal();
  Toy catToy = catFactory.createToy();
  cat.speak(); // Output: Meow! Meow!
  catToy.play(); // Output: Playing with a cat toy!
}


