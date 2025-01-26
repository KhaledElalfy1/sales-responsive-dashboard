import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/card_section.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/drawer_section.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/product_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        Expanded(flex: 1, child: DrawerSection()),
        Expanded(
          flex: 3,
          child: ProductSection(),
        ),
        Expanded(flex: 2, child: CardSection()),
      ],
    ));
  }
}
