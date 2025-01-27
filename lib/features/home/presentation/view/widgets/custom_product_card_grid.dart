
import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_images.dart';
import 'package:sales_responsive_dashboard/features/home/models/product_model.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/custom_product_card.dart';


class CustomProductCardGrid extends StatelessWidget {
  const CustomProductCardGrid({
    super.key,
    required this.childAspectRatio,
  });
  final double childAspectRatio;
  final List<ProductModel> products = const [
    ProductModel(
      name: 'Monitor',
      price: 986,
      image: AppImages.product1,
    ),
    ProductModel(
      name: 'Headphone',
      price: 678,
      image: AppImages.product2,
    ),
    ProductModel(
      name: 'Mouse',
      price: 543,
      image: AppImages.product3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items in each row
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: childAspectRatio, // Dynamically calculated
      ),
      itemBuilder: (context, index) {
        return CustomProductCard(
          productModel: products[index],
        );
      },
    );
  }
}
