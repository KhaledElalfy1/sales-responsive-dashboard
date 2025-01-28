

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_responsive_dashboard/core/cubit/cubit/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit():super( ThemeInitial());
  bool isDark = false;
  ThemeMode themeMode = ThemeMode.light;

  void changeTheme() {
    isDark = !isDark;
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    emit(ToggleTheme());
  }
}