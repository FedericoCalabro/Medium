import 'package:singleton_design_pattern/database.dart';

void main() {
  // First getInstance() invocation will trigger the creation of the actual Database instance
  var db1 = Database.getInstance();
  db1.query("SELECT * FROM users");

  // The same instance as above will be returned
  var db2 = Database.getInstance();
  db2.query("SELECT * FROM products");

  // Check if both instances are the same
  print(db1 == db2);  // Output: true
}
