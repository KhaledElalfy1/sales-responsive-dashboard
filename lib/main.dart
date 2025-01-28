import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_responsive_dashboard/core/cubit/cubit/theme_cubit.dart';
import 'package:sales_responsive_dashboard/core/themes/app_themes.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/home_view.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) {
      return BlocProvider(
        create: (context) => ThemeCubit(),
        child: const MyApp(),
      );
    }),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeView(),
      theme: AppThemes().lightTheme,
      darkTheme: AppThemes().darkTheme,
      themeMode: context.watch<ThemeCubit>().themeMode,
    );
  }
}
