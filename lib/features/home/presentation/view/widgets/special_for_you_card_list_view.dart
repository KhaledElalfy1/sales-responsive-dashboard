import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_images.dart';
import 'package:sales_responsive_dashboard/features/home/models/product_model.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/special_product_for_you_card.dart';

class SpecialForYouCardsListView extends StatelessWidget {
  const SpecialForYouCardsListView({
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
    return AspectRatio(
      aspectRatio: 6.5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => SpecialProductForYouCard(
          productModel: products[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
