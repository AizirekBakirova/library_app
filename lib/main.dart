import 'package:flutter/material.dart';
import 'package:library_app/features/presentation/pages/books_page.dart';
import 'package:library_app/features/presentation/pages/rented_books_page.dart';
import 'package:library_app/features/presentation/pages/users_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyHomePage(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const BooksPage(),
    const UsersPage(),
    const RentedBooksPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Books'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online_rounded), label: 'Rental'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Users'),
        ],
      ),
    );
  }
}
