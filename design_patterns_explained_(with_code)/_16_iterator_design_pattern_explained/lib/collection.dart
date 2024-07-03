import 'package:iterator_design_pattern/item.dart';
import 'package:iterator_design_pattern/iterator.dart';

// Concrete Aggregate: collection of books
class BookCollection implements Aggregate {
  List<Book> _books = [];

  void addBook(Book book) {
    _books.add(book);
  }

  @override
  Iterator<Book> createIterator() {
    return BookIterator(_books);
  }
}
