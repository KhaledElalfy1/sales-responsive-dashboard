import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/card_section.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/drawer_section.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/product_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sales Dashboard'),
        ),
        drawer: const Drawer(
          child: DrawerSection(),
        ),
        body: ListView(
          children: const [
            ProductSection(),
            CardSection(),
          ],
        ));
  }
}
