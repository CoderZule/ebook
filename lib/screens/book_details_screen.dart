import 'package:flutter/material.dart';
import 'package:ebook/model/book.dart';
import 'package:badges/badges.dart' as badge;

class BookDetailsScreen extends StatefulWidget {
  final Book book;

  const BookDetailsScreen(this.book);

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.title),
        centerTitle: true,
        actions: [
          Center(
              child: badge.Badge(
            badgeContent: Text(
              '0',
              style: TextStyle(color: Colors.white),
            ),
            animationDuration: Duration(microseconds: 300),
            child: Icon(Icons.shopping_bag_outlined),
          )),
          SizedBox(width: 20.0)
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.book.imageUrl),
                  minRadius: 50,
                  maxRadius: 75,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.book.author + "-" + widget.book.year.toString(),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.book.description,
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
