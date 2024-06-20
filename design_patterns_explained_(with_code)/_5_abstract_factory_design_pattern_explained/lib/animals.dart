abstract class Animal {
  void speak();
}

class Dog implements Animal {
  @override
  void speak() {
    print("Woof! Woof!");
  }
}

class Cat implements Animal {
  @override
  void speak() {
    print("Meow! Meow!");
  }
}