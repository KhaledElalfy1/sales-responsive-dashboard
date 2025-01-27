

import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/custom_product_card_list_view.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/product_section_header.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/production_action_header.dart';
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
          ProductActionHeader(title: 'Our products', onTap: (){}),
          const SizedBox(
            height: 20,
          ),
          const CustomProductCardListView(),
          const SizedBox(
            height: 50,
          ),
          ProductActionHeader(title: 'Special for you', onTap: (){}),
          const SizedBox(
            height: 20,
          ),
         const SpecialForYouCardsListView()
        ],
      ),
    );
  }
}

