abstract class Toy {
  void play();
}

class DogToy implements Toy {
  @override
  void play() {
    print("Playing with a dog toy!");
  }
}

class CatToy implements Toy {
  @override
  void play() {
    print("Playing with a cat toy!");
  }
}