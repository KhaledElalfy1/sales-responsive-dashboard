import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/themes/app_themes.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: AppThemes().lightTheme,
      darkTheme: AppThemes().darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
