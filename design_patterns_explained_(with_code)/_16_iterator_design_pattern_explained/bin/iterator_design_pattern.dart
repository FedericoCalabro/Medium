import 'package:iterator_design_pattern/collection.dart';
import 'package:iterator_design_pattern/item.dart';

void main() {
  // Create a collection of books
  var bookCollection = BookCollection();
  bookCollection.addBook(Book("Book 1", "Author 1", 29.99));
  bookCollection.addBook(Book("Book 2", "Author 2", 19.99));
  bookCollection.addBook(Book("Book 3", "Author 3", 39.99));

  // Get an iterator for the collection
  var iterator = bookCollection.createIterator();

  // Iterate through the collection using the iterator
  while (iterator.hasNext()) {
    var book = iterator.next();
    print("${book.title} by ${book.author}, Price: \$${book.price}");
  }
}
