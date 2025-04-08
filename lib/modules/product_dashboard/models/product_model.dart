class ProductModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;

  ProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map, String id) {
    return ProductModel(
      id: id,
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      price: double.tryParse((map['price'] ?? 0).toString())??0,
    );
  }
}
