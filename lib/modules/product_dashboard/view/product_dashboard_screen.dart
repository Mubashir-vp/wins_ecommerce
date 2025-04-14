import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:wins_ecommerce/core/theme/color_class.dart';
import 'package:wins_ecommerce/core/theme/text_style_class.dart';
import 'package:wins_ecommerce/modules/product_dashboard/view/widgets/skeleton_card.dart';
import '../provider/product_provider.dart';
import 'widgets/product_card.dart';

class ProductDashboardScreen extends StatelessWidget {
  const ProductDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/wins.png",
            ),
          ),
        ),
        backgroundColor: ColorsClass.blackColor,
        title: Text(
          'WINS GROUP AJMAN',
          style: TextStyleClass.mulishBoldBlack18.copyWith(
            color: ColorsClass.white,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Dynamically calculate crossAxisCount based on screen width
          int crossAxisCount;
          double screenWidth = constraints.maxWidth;

          if (screenWidth < 600) {
            crossAxisCount = 2;
          } else if (screenWidth < 900) {
            crossAxisCount = 3;
          } else if (screenWidth < 1200) {
            crossAxisCount = 4;
          } else {
            crossAxisCount = 5;
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: productProvider.loading
                ? Skeletonizer(
                    enabled: productProvider.loading,
                    child: _buildGrid(productProvider, crossAxisCount),
                  )
                : productProvider.products.isEmpty
                    ? const Center(child: Text("No Products"))
                    : _buildGrid(productProvider, crossAxisCount),
          );
        },
      ),
    );
  }

  Widget _buildGrid(ProductProvider productProvider, int crossAxisCount) {
    return GridView.builder(
      itemCount: productProvider.loading ? 6 : productProvider.products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
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
    );
  }
}
