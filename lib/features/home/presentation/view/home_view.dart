import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/widgets/adaptive_layout.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/desktop_layout.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/mobile_layout.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/tablet_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
