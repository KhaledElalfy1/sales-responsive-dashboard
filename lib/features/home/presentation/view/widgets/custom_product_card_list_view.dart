import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_images.dart';
import 'package:sales_responsive_dashboard/features/home/models/product_model.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/custom_product_card.dart';

class CustomProductCardListView extends StatelessWidget {
  const CustomProductCardListView({
    super.key,
  });

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
    return SizedBox(
      height: 362,
      child: ListView.separated(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemBuilder: (context, index) {
          return CustomProductCard(
            productModel: products[index],
          );
        },
      ),
    );
  }
}
