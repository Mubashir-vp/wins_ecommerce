import 'package:flutter/material.dart';

class ProductSkeletonCard extends StatelessWidget {
  const ProductSkeletonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(height: 14, color: Colors.grey, margin: const EdgeInsets.only(bottom: 8)),
                Container(height: 14, color: Colors.grey, margin: const EdgeInsets.only(bottom: 12)),
                Container(height: 36, width: double.infinity, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
