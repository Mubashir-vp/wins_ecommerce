import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  final List<ProductModel> _products = [];
  bool _loading = false;

  List<ProductModel> get products => _products;
  bool get loading => _loading;

  ProductProvider() {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    _loading = true;
    notifyListeners();

    final snapshot = await FirebaseFirestore.instance.collection('products').get();
    _products.clear();
    for (var doc in snapshot.docs) {
      _products.add(ProductModel.fromMap(doc.data(), doc.id));
    }

    _loading = false;
    notifyListeners();
  }
}
