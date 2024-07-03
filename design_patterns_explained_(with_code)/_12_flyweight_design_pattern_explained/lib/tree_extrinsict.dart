import 'package:flyweight_design_pattern/tree_intrinsic.dart';

// Tree class represents the contextual object with extrinsic state
class Tree {
  int x;
  int y;
  TreeType type;

  Tree(this.x, this.y, this.type);

  void draw() {
    type.draw(x, y); // Delegates drawing to the shared TreeType object
  }
}
