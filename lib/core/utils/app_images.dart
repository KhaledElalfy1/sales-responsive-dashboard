import 'package:flutter/material.dart';

class AppImages {
  AppImages._();

  static const String person = 'assets/images/person.png';

  static const String product1 = 'assets/images/product1.png';
  static const String product2 = 'assets/images/product2.png';
  static const String product3 = 'assets/images/product3.png';

  static const String special1 = 'assets/images/special1.png';
  static const String special2 = 'assets/images/special2.png';
  static const String special3 = 'assets/images/special3.png';

  static const String light = 'assets/images/light_mode.png';
  static const String night = 'assets/images/night_mode.png';


  static String card(context) {
    return Theme.of(context).brightness == Brightness.dark
        ? 'assets/images/Card_dark.png'
        : 'assets/images/Card_light.png';
  }
}
