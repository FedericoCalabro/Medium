// TreeType class represents the flyweight containing shared intrinsic state
class TreeType {
  String name;
  String color;
  String texture;

  TreeType(this.name, this.color, this.texture);

  void draw(int x, int y) {
    // Simulated draw operation using intrinsic state
    print("Drawing $color $texture tree named $name at ($x, $y)");
    // In a real implementation, this would involve drawing an actual image on a canvas
  }
}

// TreeFactory class manages creation and retrieval of TreeType flyweights
class TreeTypeFactory {
  static Map<String, TreeType> _treeTypes = {};

  static TreeType getTreeType(String name, String color, String texture) {
    String key = '$name-$color-$texture';
    TreeType? type = _treeTypes[key];
    if (type == null) {
      type = TreeType(name, color, texture);
      _treeTypes[key] = type;
    }
    return type;
  }

  static int getTreeTypesCount() {
    return _treeTypes.length;
  }
}
