// Aggregate interface: defines methods to create an Iterator object
import 'package:iterator_design_pattern/item.dart';

abstract class Aggregate {
  Iterator<Book> createIterator();
}

// Iterator interface: defines methods for iterating through elements
abstract class Iterator<T> {
  bool hasNext();
  T next();
}

// Concrete Iterator: iterates over a collection of books
class BookIterator implements Iterator<Book> {
  List<Book> _books;
  int _position = 0;

  BookIterator(this._books);

  @override
  bool hasNext() {
    return _position < _books.length;
  }

  @override
  Book next() {
    if (!hasNext()) {
      throw Exception("No more books available.");
    }
    return _books[_position++];
  }
}
