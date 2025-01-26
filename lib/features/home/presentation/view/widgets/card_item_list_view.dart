import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_images.dart';
import 'package:sales_responsive_dashboard/features/home/models/product_model.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/card_item_widget.dart';

class CardItemListView extends StatelessWidget {
  const CardItemListView({
    super.key,
  });

  final List<ProductModel> products = const [
    ProductModel(
      name: 'Mouse x1',
      price: 986,
      image: AppImages.special1,
    ),
    ProductModel(
      name: 'Headphone',
      price: 678,
      image: AppImages.special2,
    ),
    ProductModel(
      name: 'Headphone',
      price: 543,
      image: AppImages.special3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: products.length * (100.0 + 10),
      child: ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) => CardItemWidget(
          productModel: products[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
      ),
    );
  }
}
