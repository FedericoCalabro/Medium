// Abstract class representing the component in the composite pattern
abstract class FileSystemComponent {
  void showDetails();
}

// Leaf class representing a file
class File extends FileSystemComponent {
  final String name;

  File(this.name);

  @override
  void showDetails() {
    print("File: $name");
  }
}

// Composite class representing a directory
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
