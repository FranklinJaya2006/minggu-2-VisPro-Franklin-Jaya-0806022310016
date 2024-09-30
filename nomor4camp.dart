class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);
}

class Library {
  List<Book> books = [];

  void addBook(String title, String author, int year) {
    books.add(Book(title, author, year));
    print('Book "$title" added.');
  }

  void removeBook(int index) {
    if (index >= 0 && index < books.length) {
      print('Book "${books[index].title}" removed.');
      books.removeAt(index);
    } else {
      print('Invalid index.');
    }
  }

  void displayBooks() {
    if (books.isEmpty) {
      print('No books in the library.');
    } else {
      for (int i = 0; i < books.length; i++) {
        print('${i + 1}. ${books[i].title} by ${books[i].author} (${books[i].year})');
      }
    }
  }
}
