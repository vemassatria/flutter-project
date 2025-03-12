class Book {
  String name;
  String image;
  String description;
  double rate;
  int page;
  String categoryBook;
  String language;

  Book({
    required this.name,
    required this.image,
    required this.description,
    required this.rate,
    required this.page,
    required this.categoryBook,
    required this.language,
  });
}
// Daftar buku
final List<Book> listBook = [
  Book(
    name: 'Redhat',
    image: 'images/oke.png',
    description:
        'Red Hat adalah salah satu perusahaan terbesar dan dikenal untuk dedikasinya atas perangkat lunak sumber terbuka. Red Hat didirikan pada 1993 dan bermarkas di Raleigh, North Carolina, Amerika Serikat. Red Hat terkenal karena produknya Red Hat Linux salah satu distro Linux utama.',
    rate: 4.3,
    page: 229,
    categoryBook: 'Sysadmin IDN',
    language: 'IDN',
  ),
  Book(
    name: 'Flutter for Beginners',
    image: 'images/flutter_book1.jpg',
    description: 'Buku ini membantu pemula memahami dasar-dasar Flutter dengan contoh yang mudah diikuti.',
    rate: 4.5,
    page: 320,
    categoryBook: 'Programming',
    language: 'English',
  ),
  Book(
    name: 'Mastering Dart',
    image: 'images/dart_book.png',
    description: 'Panduan lengkap untuk menguasai bahasa pemrograman Dart.',
    rate: 4.7,
    page: 280,
    categoryBook: 'Programming',
    language: 'English',
  ),
  Book(
    name: 'Mobile UI/UX Design',
    image: 'images/uiux_book.jpg',
    description: 'Pelajari prinsip desain UI/UX untuk aplikasi mobile.',
    rate: 4.6,
    page: 250,
    categoryBook: 'Design',
    language: 'English',
  ),
  Book(
    name: 'Advanced Flutter',
    image: 'images/flutter_book2.jpg',
    description: 'Buku untuk developer yang ingin memperdalam kemampuan Flutter.',
    rate: 4.8,
    page: 350,
    categoryBook: 'Programming',
    language: 'English',
  ),
  Book(
    name: 'Clean Code',
    image: 'images/clean_code.jpg',
    description: 'Panduan penting dalam menulis kode yang bersih dan mudah dipahami.',
    rate: 4.9,
    page: 400,
    categoryBook: 'Software Engineering',
    language: 'English',
  ),
];