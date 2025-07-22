import 'package:flutter/material.dart';

import 'models/product.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  List<Product> products = [
    Product(
      productName: "iPhone 15 Pro",
      price: 999.99,
      description:
          "Latest iPhone with titanium design, A17 Pro chip, and advanced camera system",
      image: "https://example.com/images/iphone15pro.jpg",
    ),
    Product(
      productName: "Samsung Galaxy S24 Ultra",
      price: 1199.99,
      description:
          "Premium Android smartphone with S Pen, 200MP camera, and AI features",
      image: "https://example.com/images/galaxys24ultra.jpg",
    ),
    Product(
      productName: "MacBook Air M3",
      price: 1299.99,
      description:
          "Lightweight laptop with M3 chip, 13-inch display, and all-day battery life",
      image: "https://example.com/images/macbookair.jpg",
    ),
    Product(
      productName: "Sony WH-1000XM5",
      price: 349.99,
      description:
          "Premium noise-canceling wireless headphones with 30-hour battery life",
      image: "https://example.com/images/sonyheadphones.jpg",
    ),
    Product(
      productName: "iPad Pro 12.9",
      price: 1099.99,
      description:
          "Professional tablet with M2 chip, Liquid Retina display, and Apple Pencil support",
      image: "https://example.com/images/ipadpro.jpg",
    ),
    Product(
      productName: "Nintendo Switch OLED",
      price: 349.99,
      description:
          "Hybrid gaming console with vibrant OLED screen and enhanced audio",
      image: "https://example.com/images/nintendoswitch.jpg",
    ),
    Product(
      productName: "AirPods Pro 2",
      price: 249.99,
      description:
          "True wireless earbuds with active noise cancellation and spatial audio",
      image: "https://example.com/images/airpodspro.jpg",
    ),
    Product(
      productName: "Dell XPS 13",
      price: 999.99,
      description:
          "Ultrabook with Intel Core i7, 16GB RAM, and InfinityEdge display",
      image: "https://example.com/images/dellxps13.jpg",
    ),
    Product(
      productName: "Apple Watch Series 9",
      price: 399.99,
      description:
          "Advanced smartwatch with health monitoring, GPS, and cellular connectivity",
      image: "https://example.com/images/applewatch.jpg",
    ),
    Product(
      productName: "Tesla Model Y",
      price: 52999.99,
      description:
          "Electric SUV with autopilot, 330-mile range, and premium interior",
      image: "https://example.com/images/teslamodely.jpg",
    ),
    Product(
      productName: "Google Pixel 8 Pro",
      price: 899.99,
      description:
          "AI-powered smartphone with advanced computational photography and pure Android",
      image: "https://example.com/images/pixel8pro.jpg",
    ),
    Product(
      productName: "Surface Pro 9",
      price: 1299.99,
      description:
          "2-in-1 laptop/tablet with Intel Core i7, detachable keyboard, and Surface Pen",
      image: "https://example.com/images/surfacepro9.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart Page')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          Product product = products[index];
          return cartItem(product);
        },
      ),
    );
  }

  Widget cartItem(Product product) {
    return Card(
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            Container(height: 100, width: 100, color: Colors.deepPurple),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${product.productName}',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text('Description', style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            Text("500", style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
