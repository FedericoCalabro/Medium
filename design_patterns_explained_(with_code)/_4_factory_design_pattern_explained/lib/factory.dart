import 'package:factory_design_pattern/animals.dart';

class AnimalFactory {
  // Factory method to create an animal based on the type
  static Animal createAnimal(String type) {
    switch (type.toLowerCase()) {
      case 'dog':
        return Dog();
      case 'cat':
        return Cat();
      default:
        throw Exception('Unknown animal type: $type');
    }
  }
}