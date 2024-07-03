import 'package:flyweight_design_pattern/forest.dart';
import 'package:flyweight_design_pattern/tree_intrinsic.dart';

void main() {
  Forest forest = Forest();

  // Plant some trees
  forest.plantTree(1, 1, "Oak", "green", "texture1");
  forest.plantTree(2, 3, "Pine", "brown", "texture2");
  forest.plantTree(6, 4, "Pine", "brown", "texture2");
  forest.plantTree(3, 4, "Pine", "brown", "texture2");
  forest.plantTree(5, 6, "Maple", "red", "texture3");

  // Draw the forest
  forest.draw();

  // Output the number of unique tree types created (should be 3)
  print("Number of unique tree types created: ${TreeTypeFactory.getTreeTypesCount()}");
}
