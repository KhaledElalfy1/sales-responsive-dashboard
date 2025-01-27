import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';
import 'package:sales_responsive_dashboard/features/home/models/product_model.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffE0E0E0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productModel.image,
            height: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(productModel.name, style: AppFonts.semiBold25(context)),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$${productModel.price}',
            style: AppFonts.medium17(context)
                .copyWith(color: const Color(0xff828282)),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
