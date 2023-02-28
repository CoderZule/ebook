import 'package:flutter/material.dart';
import 'package:ebook/model/book.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  BookDetailsScreen(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title), centerTitle: true),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(book.imageUrl),
                  minRadius: 50,
                  maxRadius: 75,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    book.author + "-" + book.year.toString(),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    book.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.all(25),
                      child: ElevatedButton(
                        child: Text("Add to cart"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.red,
                          elevation: 0,
                        ),
                        onPressed: () {},
                      ),
                    ))
              ]))),
    );
  }
}
