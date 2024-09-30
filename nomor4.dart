import 'dart:io';
import 'nomor4camp.dart';

void main() {
  Library library = Library();

  while (true) {
    print('\n--- Library Menu ---');
    print('1. Add Book');
    print('2. Remove Book');
    print('3. Display Books');
    print('4. Exit');
    print('Choose an option (1-4): ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter book title: ');
        String title = stdin.readLineSync()!;
        print('Enter book author: ');
        String author = stdin.readLineSync()!;
        print('Enter book year: ');
        int year = int.parse(stdin.readLineSync()!);
        library.addBook(title, author, year);
        break;

      case '2':
        library.displayBooks();
        if (library.books.isNotEmpty) {
          print('Enter the number of the book to remove: ');
          int index = int.parse(stdin.readLineSync()!) - 1;
          library.removeBook(index);
        }
        break;

      case '3':
        library.displayBooks();
        break;

      case '4':
        print('Exiting the library system. Goodbye!');
        return;

      default:
        print('Invalid option. Please choose a valid option (1-4).');
    }
  }
}
