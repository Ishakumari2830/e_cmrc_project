import 'package:flutter/material.dart';
import '../providers/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          children: [
            Image.network(product.imageUrl),
            SizedBox(height: 10),
            Text(product.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("\$${product.price}", style: TextStyle(fontSize: 18, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
