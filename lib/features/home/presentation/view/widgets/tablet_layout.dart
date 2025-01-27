import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/custom_product_card_grid.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/drawer_section.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/product_section_header.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/production_action_header.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/special_for_you_card_list_view.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/upgrade_promotion_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // print screen width
    print(MediaQuery.of(context).size.width);
    return Scaffold(
        body: Row(
      children: [
        const Expanded(flex: 1, child: DrawerSection()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 50)),
                const SliverToBoxAdapter(child: ProductSectionHeader()),
                const SliverToBoxAdapter(child: SizedBox(height: 40)),
                const SliverToBoxAdapter(child: UpgradePromotionWidget()),
                const SliverToBoxAdapter(child: SizedBox(height: 40)),
                SliverToBoxAdapter(
                  child: ProductActionHeader(
                    title: 'Our Products',
                    onTap: () {},
                  ),
                ),
                // if condition for grid according to screen size
                if (MediaQuery.of(context).size.width > 1050)
                  const CustomProductCardGrid(childAspectRatio: 1.1),
                if (MediaQuery.of(context).size.width > 900)
                  const CustomProductCardGrid(childAspectRatio: 1.1),
                if (MediaQuery.of(context).size.width <= 900)
                  const CustomProductCardGrid(childAspectRatio: .85),
                const SliverToBoxAdapter(child: SizedBox(height: 40)),
                SliverToBoxAdapter(
                  child: ProductActionHeader(
                    title: 'Special for you',
                    onTap: () {},
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                const SliverToBoxAdapter(child: SpecialForYouCardsListView()),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
