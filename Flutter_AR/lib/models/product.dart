class Product {
  final String productName;
  final double price;
  final String description;
  final String image;

  Product({
    required this.productName,
    required this.price,
    required this.description,
    required this.image,
  });
  // Convert to Map for JSON serialization
  Map<String, dynamic> toMap() {
    return {
      'product_name': productName,
      'price': price,
      'description': description,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productName: map['product_name'],
      price: map['price'].toDouble(),
      description: map['description'],
      image: map['image'],
    );
  }
}
