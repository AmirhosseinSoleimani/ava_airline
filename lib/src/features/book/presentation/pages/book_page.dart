import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  static const bookPageName = 'book-page';
  static const bookPagePath = '/book-page';
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
