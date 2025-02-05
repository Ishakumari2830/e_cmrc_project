import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.id, required this.name, required this.imageUrl, required this.price});
}

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    Product(id: '1', name: ' Shoe', imageUrl: 'assets/shoe.jpg',price: 10.2),
    Product(id: '2', name: 'Shirt', imageUrl: 'assets/shirt.jpg',price: 2.1),
    Product(id: '3', name: 'Long Dress', imageUrl: 'assets/dress.jpg',price: 3.3),
    Product(id: '4', name: 'Philips Trimmer', imageUrl: 'assets/philips_trimmer.jpg',price: 2.5),
  ];
  List<Product> get products => [..._products];
}
