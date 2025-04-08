class OrderModel {
  final String productId;
  final String productName;
  final int quantity;
  final String customerName;
  final String phoneNumber;
  final String address;

  OrderModel({
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.customerName,
    required this.phoneNumber,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'productName': productName,
      'quantity': quantity,
      'customerName': customerName,
      'phoneNumber': phoneNumber,
      'address': address,
      'orderedAt': DateTime.now().toIso8601String(),
    };
  }
}
