// Composite class representing a directory
import 'package:composite_design_pattern/component.dart';

class Directory extends FileSystemComponent {
  final String name;
  final List<FileSystemComponent> _children = [];

  Directory(this.name);

  void add(FileSystemComponent component) {
    _children.add(component);
  }

  void remove(FileSystemComponent component) {
    _children.remove(component);
  }

  @override
  void showDetails() {
    print("Directory: $name");
    for (var component in _children) {
      component.showDetails();
    }
  }
}
