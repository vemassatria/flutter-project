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

List<Book> listBook = [
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
];
