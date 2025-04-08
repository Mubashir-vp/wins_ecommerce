import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/order_model.dart';

class OrderProvider with ChangeNotifier {
  Future<void> placeOrder(OrderModel order) async {
    await FirebaseFirestore.instance.collection('orders').add(order.toMap());
  }
}
