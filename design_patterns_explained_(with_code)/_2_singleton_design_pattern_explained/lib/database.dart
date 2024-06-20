class Database {
  static Database? instance = null;

  Database._internal() {
    print("Database initialization...");
  }

  static Database getInstance() {
    if (instance == null) {
      instance = Database._internal();
    }
    return instance!;
  }

  void query(String sql) {
    print("Executing query: $sql");
  }
}

