import 'package:flutter/material.dart';
import 'package:wins_ecommerce/widgets/theme_button.dart';
import '../../models/product_model.dart';
import 'order_dialog.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                "https://picsum.photos/seed/picsum/200/300",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(product.name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Text('\$${product.price.toStringAsFixed(2)}'),
                const SizedBox(height: 12),
                ThemeButton(
                    function: () {
                      showDialog(
                        context: context,
                        builder: (_) => OrderDialog(product: product),
                      );
                    },
                    label: "Order Now")
                // ElevatedButton(
                //   onPressed: () => showDialog(
                //     context: context,
                //     builder: (_) => OrderDialog(product: product),
                //   ),
                //   child: const Text('Order Now'),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
