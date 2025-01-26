import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';
// ignore: unused_import
import 'package:sales_responsive_dashboard/core/utils/app_images.dart';
import 'package:sales_responsive_dashboard/features/home/models/product_model.dart';

class SpecialProductForYouCard extends StatelessWidget {
  const SpecialProductForYouCard({
    super.key, required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffE0E0E0),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            productModel.image,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productModel.name,
                style: AppFonts.semiBold25(context),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '\$${productModel.price}',
                style: AppFonts.medium17(context)
                    .copyWith(color: const Color(0xff828282)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
