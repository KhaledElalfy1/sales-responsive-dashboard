import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_colors.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/custom_product_card_list_view.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/product_section_header.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/special_for_you_card_list_view.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/upgrade_promotion_widget.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const ProductSectionHeader(),
          const SizedBox(
            height: 30,
          ),
          const UpgradePromotionWidget(),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Text(
                'Our products',
                style: AppFonts.bold25(context),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View all',
                  style: AppFonts.bold15(context)
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomProductCardListView(),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Text(
                'Special For You',
                style: AppFonts.bold25(context),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View all',
                  style: AppFonts.bold15(context)
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
         const SpecialForYouCardsListView()
        ],
      ),
    );
  }
}

