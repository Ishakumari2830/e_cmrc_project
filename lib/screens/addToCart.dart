import 'package:flutter/material.dart';
class AddToCart extends StatelessWidget {
  final List<dynamic> cartItems;

  AddToCart({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: cartItems.isEmpty
          ? Center(child: Text("No items in cart"))
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (ctx, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.network(item.imageUrl, width: 50, fit: BoxFit.cover),
            title: Text(item.name),
            subtitle: Text("Quantity: ${item.quantity} | Total: \$${item.price * item.quantity}"),
          );
        },
      ),
    );
  }
}