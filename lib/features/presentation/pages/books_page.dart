import 'package:flutter/material.dart';
import 'package:library_app/features/presentation/pages/l.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({
    super.key,
  });

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мурас китепканасы'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return MyBookCard();
        },
      ),
    );
  }
}

class MyBookCard extends StatelessWidget {
  const MyBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/sk.jpg',
                    width: 200,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (''),
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Автор:',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Саны:',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      InkWell(
                        onTap: () {},
                        child: const Text('Ижарага алуу'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
