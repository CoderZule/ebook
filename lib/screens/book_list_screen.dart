import 'package:ebook/model/book.dart';
import 'package:ebook/screens/book_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badge;
import 'package:ebook/screens/cart_screen.dart';
import 'package:ebook/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/562/562132.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Books to pick'))
            ],
          ),
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
          ]),
      body: ListView.builder(
          itemCount: bookList.length,
          itemBuilder: (context, index) {
            Book book = bookList[index];
            return Card(
              child: ListTile(
                title: Text(book.title),
                subtitle: Text(book.year.toString()),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(book.imageUrl),
                ),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookDetailsScreen(book)));
                },
              ),
            );
          }),
    );
  }
}
