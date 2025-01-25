import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_colors.dart';
import 'package:sales_responsive_dashboard/core/utils/size_config.dart';

abstract class AppFonts {
  static TextStyle semiBold20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle bold40(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 40),
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static TextStyle medium20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle bold20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.bold,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle bold25(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 25),
        fontWeight: FontWeight.bold,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle semiBold25(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 25),
        fontWeight: FontWeight.w600,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle semiBold17(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 17),
        fontWeight: FontWeight.w600,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle semiBold30(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 30),
        fontWeight: FontWeight.w600,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle medium17(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 17),
        fontWeight: FontWeight.w500,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle bold30(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 30),
        fontWeight: FontWeight.bold,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle bold15(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 15),
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor, // You can replace this with a theme color if needed
      );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double currentWidth = MediaQuery.sizeOf(context).width;
  double responsiveFont =
      fontSize * getCurrentPlatformRatio(currentWidth: currentWidth);
  double lowerLimit = responsiveFont * .8;
  double upperLimit = responsiveFont * 1.2;
  // debugPrint(
  //     'base font size $fontSize , lowerLimit = $lowerLimit , upperLimit= $upperLimit , responsive font $responsiveFont , final font ${responsiveFont.clamp(lowerLimit, upperLimit)}');

  return responsiveFont.clamp(lowerLimit, upperLimit);
}

double getCurrentPlatformRatio({required double currentWidth}) {
  if (currentWidth < SizeConfig.tablet) {
    return currentWidth / 550;
  } else if (currentWidth < SizeConfig.desktop) {
    return currentWidth / 1000;
  } else {
    return currentWidth / 1920;
  }
}
