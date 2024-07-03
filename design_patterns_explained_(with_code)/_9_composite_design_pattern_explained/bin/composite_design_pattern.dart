import 'package:composite_design_pattern/composite.dart';

void main() {
  // Create files
  File file1 = File("file1.txt");
  File file2 = File("file2.txt");
  File file3 = File("file3.txt");

  // Create directories
  Directory dir1 = Directory("dir1");
  Directory dir2 = Directory("dir2");
  Directory rootDir = Directory("root");

  // Build the directory structure
  dir1.add(file1);
  dir1.add(file2);
  dir2.add(file3);
  rootDir.add(dir1);
  rootDir.add(dir2);

  // Display details of the entire file system
  rootDir.showDetails();

  // Output:
  // Directory: root
  // Directory: dir1
  // File: file1.txt
  // File: file2.txt
  // Directory: dir2
  // File: file3.txt
}
