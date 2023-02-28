import 'package:flutter/material.dart';

class Book {
  String title;
  String description;
  String author;
  String price;
  String imageUrl;
  int year;

  Book(
      {required this.title,
      required this.description,
      required this.author,
      required this.price,
      required this.imageUrl,
      required this.year});
}

List<Book> bookList = [
  Book(
      title: 'A Promised Land',
      description:
          'The former president tells us his life story, spanning all the way from his childhood to his presidency',
      author: 'Barack Obama',
      price: '20 TND',
      imageUrl:
          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1600350497-41L5qgUW2fL.jpg?crop=1xw:1xh;center,top&resize=980:*',
      year: 2020),
  Book(
      title: 'The Return',
      description:
          'This one follows an injured Navy doc, who moves back to North Carolina (duh) and falls for a mysterious local deputy sheriff. His story becomes even more complicated when he meets a teenage girl who may shed light on his past',
      author: 'Nicholas Sparks',
      price: '20 TND',
      imageUrl:
          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1601316931-51Y2VGacBDL.jpg?crop=1xw:1xh;center,top&resize=980:*',
      year: 2020),
  Book(
      title: 'Fear',
      description:
          'Fear is the most intimate portrait of a sitting president ever published during the president’s first years in office. The focus is on the explosive debates and the decision-making in the Oval Office, the Situation Room, Air Force One and the White House residence.',
      author: 'Bob Woodward',
      price: '10 TND',
      imageUrl:
          'https://m.media-amazon.com/images/I/416jD1EyieL._SX329_BO1,204,203,200_.jpg',
      year: 2018),
  Book(
      title: 'Dog Man and Cat Kid',
      description:
          "Dav Pilkey's wildly popular Dog Man series appeals to readers of all ages and explores universally positive themes, including empathy, kindness, persistence, and the importance of being true to one's self.",
      author: 'Dav Pilkey',
      price: '5 TND',
      imageUrl:
          'https://m.media-amazon.com/images/I/51f3jJepQcL._SX358_BO1,204,203,200_.jpg',
      year: 2017),
  Book(
      title: 'Things Fall Apart',
      description:
          "THINGS FALL APART tells two overlapping, intertwining stories, both of which center around Okonkwo, a “strong man” of an Ibo village in Nigeria. The first of these stories traces Okonkwo's fall from grace with the tribal world in which he lives, and in its classical purity of line and economical beauty it provides us with a powerful fable about the immemorial conflict between the individual and society. The second story, which is as modern as the first is ancient, and which elevates the book to a tragic plane, concerns the clash of cultures and the destruction of Okonkwo's world through the arrival of aggressive, proselytizing European missionaries",
      author: 'Chinua Achebe',
      price: '15 TND',
      imageUrl:
          'https://m.media-amazon.com/images/P/0385667833.01._SCLZZZZZZZ_SX500_.jpg',
      year: 1958),
  Book(
      title: 'The stranger',
      description:
          "The first of Camus' novels published in his lifetime, the story follows Meursault, an indifferent settler in French Algeria, who, weeks after his mother's funeral, kills an unnamed Arab man in Algiers.",
      author: 'Albert Camus',
      price: '15 TND',
      imageUrl:
          'https://ia801401.us.archive.org/view_archive.php?archive=/32/items/l_covers_0008/l_covers_0008_29.tar&file=0008296476-L.jpg',
      year: 1942),
  Book(
      title: 'A Promised Land',
      description:
          'The former president tells us his life story, spanning all the way from his childhood to his presidency',
      author: 'Barack Obama',
      price: '20 TND',
      imageUrl:
          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1600350497-41L5qgUW2fL.jpg?crop=1xw:1xh;center,top&resize=980:*',
      year: 2020),
  Book(
      title: 'The Return',
      description:
          'This one follows an injured Navy doc, who moves back to North Carolina (duh) and falls for a mysterious local deputy sheriff. His story becomes even more complicated when he meets a teenage girl who may shed light on his past',
      author: 'Nicholas Sparks',
      price: '20 TND',
      imageUrl:
          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1601316931-51Y2VGacBDL.jpg?crop=1xw:1xh;center,top&resize=980:*',
      year: 2020),
  Book(
      title: 'Fear',
      description:
          'Fear is the most intimate portrait of a sitting president ever published during the president’s first years in office. The focus is on the explosive debates and the decision-making in the Oval Office, the Situation Room, Air Force One and the White House residence.',
      author: 'Bob Woodward',
      price: '10 TND',
      imageUrl:
          'https://m.media-amazon.com/images/I/416jD1EyieL._SX329_BO1,204,203,200_.jpg',
      year: 2018),
  Book(
      title: 'Dog Man and Cat Kid',
      description:
          "Dav Pilkey's wildly popular Dog Man series appeals to readers of all ages and explores universally positive themes, including empathy, kindness, persistence, and the importance of being true to one's self.",
      author: 'Dav Pilkey',
      price: '5 TND',
      imageUrl:
          'https://m.media-amazon.com/images/I/51f3jJepQcL._SX358_BO1,204,203,200_.jpg',
      year: 2017),
  Book(
      title: 'Things Fall Apart',
      description:
          "THINGS FALL APART tells two overlapping, intertwining stories, both of which center around Okonkwo, a “strong man” of an Ibo village in Nigeria. The first of these stories traces Okonkwo's fall from grace with the tribal world in which he lives, and in its classical purity of line and economical beauty it provides us with a powerful fable about the immemorial conflict between the individual and society. The second story, which is as modern as the first is ancient, and which elevates the book to a tragic plane, concerns the clash of cultures and the destruction of Okonkwo's world through the arrival of aggressive, proselytizing European missionaries",
      author: 'Chinua Achebe',
      price: '15 TND',
      imageUrl:
          'https://m.media-amazon.com/images/P/0385667833.01._SCLZZZZZZZ_SX500_.jpg',
      year: 1958),
  Book(
      title: 'The stranger',
      description:
          "The first of Camus' novels published in his lifetime, the story follows Meursault, an indifferent settler in French Algeria, who, weeks after his mother's funeral, kills an unnamed Arab man in Algiers.",
      author: 'Albert Camus',
      price: '15 TND',
      imageUrl:
          'https://ia801401.us.archive.org/view_archive.php?archive=/32/items/l_covers_0008/l_covers_0008_29.tar&file=0008296476-L.jpg',
      year: 1942),
];
