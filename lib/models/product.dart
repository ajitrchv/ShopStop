import 'package:flutter/material.dart';


class product {

  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  bool isFavorite;
    void toggleFavoriteStatus(){
    isFavorite = !isFavorite;
    notifyListeners();
  }

  product({
  required this.id, 
  required this.title, 
  required this.description, 
  required this.price, 
  required this.imageUrl,
  this.isFavorite = false}
  );
}
