import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:wins_ecommerce/modules/product_dashboard/view/widgets/skeleton_card.dart';
import '../provider/product_provider.dart';
import 'widgets/product_card.dart';

class ProductDashboardScreen extends StatelessWidget {
  const ProductDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
        appBar: AppBar(title:  Text('WINS GROUP AJMAN')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: productProvider.loading
              ? Skeletonizer(
                  enabled: productProvider.loading,
                  child: GridView.builder(
                    itemCount: productProvider.loading
                        ? 6
                        : productProvider.products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      if (productProvider.loading) {
                        return const ProductSkeletonCard();
                      }
                      final product = productProvider.products[index];
                      return ProductCard(product: product);
                    },
                  ),
                )
              : productProvider.products.isEmpty
                  ? Center(
                      child: Text(
                        "No Products",
                      ),
                    )
                  : Skeletonizer(
            enabled: productProvider.loading,
            child: GridView.builder(
              itemCount: productProvider.loading
                  ? 6
                  : productProvider.products.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                if (productProvider.loading) {
                  return const ProductSkeletonCard();
                }
                final product = productProvider.products[index];
                return ProductCard(product: product);
              },
            ),
          ),
        ));
  }
}
