/// This file defines the Product model, representing the structure
/// of product data. Useful for mapping product information from APIs or databases.

class ProductModel {
  final String id;
  final String name;
  final double price;

  ProductModel({required this.id, required this.name, required this.price});

  /// Factory method to create a ProductModel from a JSON map.
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
    );
  }
}
