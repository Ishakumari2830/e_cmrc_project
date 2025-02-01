import 'package:e_commerce_project/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../providers/product_provider.dart';



class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> categories = ["Shoes", "Men's Wear", "Dress", "Electronics"];

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final products = productProvider.products;

    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce App"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner / Slider
            CarouselSlider(
              options: CarouselOptions(height: 180, autoPlay: true, enlargeCenterPage: true),
              items: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2ZRS42MPcJObtMzaFw3qHpQ3-l5SHFKVh4g&s",
                "data:image/jpeg;base64,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"]
                  .map((imageUrl) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(imageUrl, fit: BoxFit.cover, width: double.infinity),
              ))
                  .toList(),
            ),

            SizedBox(height: 10),

            // Categories Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (ctx, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Chip(label: Text(categories[index])),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Product Listing
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Products", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (ctx, index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => ProductDetailScreen(product: product)));
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              child: Image.network(
                                product.imageUrl,
                                fit: BoxFit.cover,
                                height: 200,
                                width: double.infinity,
                              ),
                            ),
                            Positioned(
                              top: 5,
                              right: 5,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.favorite_border, color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "\$${product.price}",
                                style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "In Stock",
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    ),
                                    child: Text("Add", style: TextStyle(fontSize: 12)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
