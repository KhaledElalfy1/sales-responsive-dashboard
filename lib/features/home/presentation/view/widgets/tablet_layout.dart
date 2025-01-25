import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/drawer_section.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        Expanded(flex: 1, child: DrawerSection()),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
      ],
    ));
  }
}
