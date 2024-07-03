import 'package:proxy_design_pattern/image.dart';

class ProxyImage implements Image {
  RealImage? _realImage;
  late String _fileName;

  ProxyImage(String fileName) {
    _fileName = fileName;
  }

  @override
  void display() {
    if (_realImage == null) {
      _realImage = RealImage(_fileName);
    }
    _realImage!.display();
  }
}
