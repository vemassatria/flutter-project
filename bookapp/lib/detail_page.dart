import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:bookapp/book.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage({super.key, required this.book});

  @override
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
          // Judul
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                book.name,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          // Info Bukuu
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bookInfo('Rating', book.rate.toString()),
              bookInfo('Pages', book.page.toString()),
              bookInfo('Language', book.language),
            ],
          ),
          // Deskripsi
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Description",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: bookDesc(book.description),
          ),
        ],
      ),
    );
  }

  // Fungsi bookInfo untuk menampilkan informasi buku
  Widget bookInfo(String value, String info) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          info,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget bookDesc(String desc) {
    return Column(
      children: [
        Text(
          desc,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
