import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:bookapp/book.dart';
class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage({super.key, required this.book});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.name)),
      body: ListView(
        children: [
          // Gambar
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Center(child: Image.asset(book.image, width: 130)),
            ),
          ),
        ],
      ),
    );
  }
}
