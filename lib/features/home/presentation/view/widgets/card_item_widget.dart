import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';
import 'package:sales_responsive_dashboard/features/home/models/product_model.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/custom_card_button.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    super.key, required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            productModel.image,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productModel.name, style: AppFonts.semiBold25(context)),
              Text('\$${productModel.price}', style: AppFonts.medium17(context)),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ),
              ),
              Row(
                children: [
                  CustomCardButton(
                    icon: Icons.remove,
                    onPressed: () {},
                  ),
                  Text(
                    '1',
                    style: AppFonts.medium20(context),
                  ),
                  CustomCardButton(
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
