import 'package:flutter/material.dart';

class Cart {
  late final int? id;
  final String? bookId;
  final String? bookTitle;
  final int? initialPrice;
  final int? bookPrice;
  final int? quantity;
  final String? image;

  Cart(
      {required this.id,
      required this.bookId,
      required this.bookTitle,
      required this.initialPrice,
      required this.bookPrice,
      required this.quantity,
      required this.image});

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        bookId = res["bookId"],
        bookTitle = res["bookTitle"],
        initialPrice = res["initialPrice"],
        bookPrice = res["bookPrice"],
        quantity = res["quantity"],
        image = res["image"];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'bookId': bookId,
      'bookTitle': bookTitle,
      'initialPrice': initialPrice,
      'bookPrice': bookPrice,
      'quantity': quantity,
      'image': image,
    };
  }
}
