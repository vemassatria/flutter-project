import 'package:bookapp/book.dart';
import 'package:flutter/material.dart';
import 'package:bookapp/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mari Belajar Flutter\nTINGKATKAN SKILL",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Image.asset('images/oke.png', width: 100),
                ],
              ),

              const SizedBox(height: 10), // Jarak antara teks dan daftar buku

              // Teks "Books"
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Books",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // List Buku
              ListView.builder(
                itemCount: listBook.length,
                shrinkWrap: true, // Agar bisa disesuaikan dengan parent (SingleChildScrollView)
                physics: const NeverScrollableScrollPhysics(), // Menghindari konflik dengan ScrollView
                itemBuilder: (context, index) {
                  final book = listBook[index];
                  return GestureDetector(
                    onTap: () {
                      // Pindah ke halaman detail
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(book: book),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 90,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 6.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(book.image, width: 64),
                          const SizedBox(width: 10), // Jarak antara gambar dan teks
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                book.categoryBook,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
