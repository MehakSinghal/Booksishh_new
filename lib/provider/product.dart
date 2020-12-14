import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final double price;
  final String image;
  final String edition;
  final String language;
  final String publisher;
  final String author;
  final String genre;
  final int nop; // number of pages
  final String howOld;

  Product(
      {this.description,
      this.title,
      this.id,
      this.author,
      this.edition,
      this.genre,
      this.howOld,
      this.image,
      this.language,
      this.nop,
      this.price,
      this.publisher});

  Future<void> addProduct()async {
    final String url = "https://booksishh.firebaseio.com/products";
    final response = await http.post(url,body: json.encode({}));
  }
}
