import 'package:ebook/model/book.dart';
import 'package:ebook/screens/book_details_screen.dart';
import 'package:flutter/material.dart';

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
      ),
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
