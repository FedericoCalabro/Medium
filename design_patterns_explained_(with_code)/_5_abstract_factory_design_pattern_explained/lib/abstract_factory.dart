
import 'package:abstract_factory_design_pattern/animals.dart';
import 'package:abstract_factory_design_pattern/toys.dart';

abstract class AnimalFactory {
  Animal createAnimal();
  Toy createToy();
}

class DogFactory implements AnimalFactory {
  @override
  Animal createAnimal() {
    return Dog();
  }

  @override
  Toy createToy() {
    return DogToy();
  }
}

class CatFactory implements AnimalFactory {
  @override
  Animal createAnimal() {
    return Cat();
  }

  @override
  Toy createToy() {
    return CatToy();
  }
}