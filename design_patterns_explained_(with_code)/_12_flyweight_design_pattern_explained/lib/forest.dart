// Forest class manages collections of trees
import 'package:flyweight_design_pattern/tree_extrinsict.dart';
import 'package:flyweight_design_pattern/tree_intrinsic.dart';

class Forest {
  List<Tree> trees = [];

  void plantTree(int x, int y, String name, String color, String texture) {
    TreeType type = TreeTypeFactory.getTreeType(name, color, texture);
    Tree tree = Tree(x, y, type);
    trees.add(tree);
  }

  void draw() {
    for (var tree in trees) {
      tree.draw();
    }
  }
}
