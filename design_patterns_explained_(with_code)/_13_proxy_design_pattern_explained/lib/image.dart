abstract class Image {
  void display();
}

// RealImage class representing a concrete implementation of Image
class RealImage implements Image {
  late String _fileName;

  RealImage(String fileName) {
    _fileName = fileName;
    loadFromDisk();
  }

  void loadFromDisk() {
    print("Loading $_fileName");
  }

  @override
  void display() {
    print("Displaying $_fileName");
  }
}
