import 'package:flutter/material.dart';

class LibraryHomePage extends StatefulWidget {
  @override
  _LibraryHomePageState createState() => _LibraryHomePageState();
}

class _LibraryHomePageState extends State<LibraryHomePage> {
  final List<Book> _books = [
    Book('Flutter for Beginners', 'John Doe'),
    Book('Advanced Dart', 'Jane Smith'),
    Book('Mobile Development Patterns', 'Alice Brown'),
  ];

  final User _user = User('Alice', 'alice@example.com');

  void _rentBook(Book book) {
    setState(() {
      if (_user.rentBook(book)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('You rented "${book.title}".')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('"${book.title}" is not available.')),
        );
      }
    });
  }

  void _returnBook(Book book) {
    setState(() {
      _user.returnBook(book);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You returned "${book.title}".')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library Management'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _books.length,
              itemBuilder: (context, index) {
                final book = _books[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  trailing: book.isAvailable
                      ? ElevatedButton(
                          onPressed: () => _rentBook(book),
                          child: Text('Rent'),
                        )
                      : Text('Not Available',
                          style: TextStyle(color: Colors.red)),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Rented Books:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _user.rentedBooks.length,
              itemBuilder: (context, index) {
                final book = _user.rentedBooks[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  trailing: ElevatedButton(
                    onPressed: () => _returnBook(book),
                    child: Text('Return'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Book {
  String title;
  String author;
  bool _isAvailable;

  Book(this.title, this.author) : _isAvailable = true;

  bool get isAvailable => _isAvailable;

  void _updateStatus(bool status) {
    _isAvailable = status;
  }

  bool rentBook() {
    if (_isAvailable) {
      _updateStatus(false);
      return true;
    }
    return false;
  }

  void returnBook() {
    _updateStatus(true);
  }
}

class User {
  String name;
  String email;
  List<Book> _rentedBooks = [];

  User(this.name, this.email);

  List<Book> get rentedBooks => List.unmodifiable(_rentedBooks);

  bool rentBook(Book book) {
    if (book.rentBook()) {
      _rentedBooks.add(book);
      return true;
    }
    return false;
  }

  void returnBook(Book book) {
    if (_rentedBooks.contains(book)) {
      book.returnBook();
      _rentedBooks.remove(book);
    }
  }
}
