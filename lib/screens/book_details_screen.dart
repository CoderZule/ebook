import 'package:flutter/material.dart';
import 'package:ebook/model/book.dart';
import 'package:badges/badges.dart' as badge;
import 'package:provider/provider.dart';
import 'package:ebook/db/db_helper.dart';
import 'package:ebook/provider/cart_provider.dart';
import 'package:ebook/screens/cart_screen.dart';
import 'package:ebook/model/cart.dart';

class BookDetailsScreen extends StatefulWidget {
  final Book book;

  const BookDetailsScreen(this.book);

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  DBHelper? dbHelper = DBHelper();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.title),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: Center(
                  child: badge.Badge(
                showBadge: true,
                badgeContent: Consumer<CartProvider>(
                  builder: (context, value, child) {
                    return Text(value.getCounter().toString(),
                        style: TextStyle(color: Colors.white));
                  },
                ),
                animationType: badge.BadgeAnimationType.fade,
                animationDuration: Duration(milliseconds: 300),
                child: Icon(Icons.shopping_bag_outlined),
              ))),
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
                    widget.book.author + " - " + widget.book.year.toString(),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.book.price.toString() + " TND",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
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
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          elevation: 0,
                        ),
                        onPressed: () {
                          dbHelper!
                              .insert(Cart(
                                  id: widget.book.id,
                                  bookId: widget.book.id.toString(),
                                  bookTitle: widget.book.title,
                                  initialPrice: widget.book.price,
                                  bookPrice: widget.book.price,
                                  quantity: 1,
                                  image: widget.book.imageUrl))
                              .then((value) {
                            cart.addTotalPrice(
                                double.parse(widget.book.price.toString()));
                            cart.addCounter();

                            final snackBar = SnackBar(
                              backgroundColor: Colors.green,
                              content: Text('Book is added to cart'),
                              duration: Duration(seconds: 1),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }).onError((error, stackTrace) {
                            print("error" + error.toString());
                            final snackBar = SnackBar(
                                backgroundColor: Colors.red,
                                content: Text('Book is already added in cart'),
                                duration: Duration(seconds: 1));

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          });
                        },
                      ),
                    ))
              ]))),
    );
  }
}
