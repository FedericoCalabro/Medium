import 'package:proxy_design_pattern/image.dart';
import 'package:proxy_design_pattern/proxy.dart';

void main() {
  Image image1 = ProxyImage("image1.jpg");
  Image image2 = ProxyImage("image2.png");

  // Image 1: Image will be loaded from disk when displayed
  image1.display();
  // Image 1: Image will be displayed without reloading from disk
  image1.display();

  // Image 2: Image will be loaded from disk when displayed
  image2.display();
}
