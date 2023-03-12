void main() {
  book b1 = new book();
  b1.setbookprice = 2000;
  b1.setbookTitle = "Math";
  b1.setbookPublisher = "GABA";
  b1.setbookAuthor = "albert Einstien";
  print("*********************Information of book is**************************");
  print("Title of  book is : ${b1.getbookTitle}");
  print("publisher of book is : ${b1.getbookPublisher}");
  print("author of book is: ${b1.getbookAuthor}");
  print("price of book is: ${b1.getbookPrice}");
  double discountedPrice = b1.discountOnBook(25);
  print("after discounted the final price of this book is : $discountedPrice");
}

class book {
  late String title;
  late String author;
  late String publisher;
  late double price;
  set setbookTitle(String title) {
    this.title = title;
  }

  set setbookAuthor(String author) {
    this.author = author;
  }

  set setbookPublisher(String publisher) {
    this.publisher = publisher;
  }

  set setbookprice(double price) {
    this.price = price;
  }

  String get getbookTitle {
    return title;
  }

  String get getbookAuthor {
    return author;
  }

  String get getbookPublisher {
    return publisher;
  }

  double get getbookPrice {
    return price;
  }

  double discountOnBook(double discountinPercentage) {
    double discountedPrice = price - (price * (discountinPercentage / 100));
    return discountedPrice;
  }
}
