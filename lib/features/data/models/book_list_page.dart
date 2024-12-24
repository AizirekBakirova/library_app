class BookListPage {
  BookListPage(
      {required this.images,
      required this.title,
      required this.author,
      required this.genre,
      required this.copiesAvailable,
      required this.totalCopies});
  final String images;
  final String title;
  final String author;
  final String genre;
  final int copiesAvailable;
  final int totalCopies;
}

BookListPage book1 = BookListPage(
  images: 'assets/n1.jpg',
  title: '',
  author: '',
  genre: '',
  copiesAvailable: 10,
  totalCopies: 10,
);
BookListPage book2 = BookListPage(
  images: 'assets/n1.jpg',
  title: '',
  author: '',
  genre: '',
  copiesAvailable: 19,
  totalCopies: 19,
);
BookListPage book3 = BookListPage(
  images: 'assets/n1.jpg',
  title: '',
  author: '',
  genre: '',
  copiesAvailable: 15,
  totalCopies: 15,
);
BookListPage book4 = BookListPage(
  images: 'assets/n1.jpg',
  title: '',
  author: '',
  genre: '',
  copiesAvailable: 23,
  totalCopies: 23,
);
BookListPage book5 = BookListPage(
  images: 'assets/n1.jpg',
  title: '',
  author: '',
  genre: '',
  copiesAvailable: 7,
  totalCopies: 7,
);
BookListPage book6 = BookListPage(
  images: 'assets/n1.jpg',
  title: '',
  author: '',
  genre: '',
  copiesAvailable: 50,
  totalCopies: 50,
);
BookListPage book7 = BookListPage(
  images: 'assets/n1.jpg',
  title: '',
  author: '',
  genre: '',
  copiesAvailable: 11,
  totalCopies: 11,
);

List<BookListPage> newsList = [book1, book2, book3, book4, book5, book6, book7];
