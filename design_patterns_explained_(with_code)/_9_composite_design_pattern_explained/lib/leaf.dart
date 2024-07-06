// Leaf class representing a file
import 'package:composite_design_pattern/component.dart';

class File extends FileSystemComponent {
  final String name;

  File(this.name);

  @override
  void showDetails() {
    print("File: $name");
  }
}
