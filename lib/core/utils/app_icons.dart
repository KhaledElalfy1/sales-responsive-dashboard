// ignore_for_file: prefer_single_quotes
import 'package:flutter/material.dart';

class AppIcons {
  AppIcons._();

  /// Assets for iconsDashboardLight
  /// assets/icons/dashboard_light.svg
  static const String iconsDashboardLight = "assets/icons/dashboard_light.svg";

  /// Assets for iconsFavoriteLight
  /// assets/icons/favorite_light.svg
  static const String iconsFavoriteLight = "assets/icons/favorite_light.svg";

  /// Assets for iconsListingDark
  /// assets/icons/listing_dark.svg
  static const String iconsListingDark = "assets/icons/listing_dark.svg";

  /// Assets for iconsListingLight
  /// assets/icons/listing_light.svg
  static const String iconsListingLight = "assets/icons/listing_light.svg";

  static String logoIcon(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? "assets/icons/Logo_dark.svg"
          : "assets/icons/Logo_light.svg";

  static String iconsCart(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? "assets/icons/Card1_dark.svg"
          : "assets/icons/Card1_light.svg";

  static String iconsLogout(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? "assets/icons/logout_dark.svg"
          : "assets/icons/logout_light.svg";
  /// Assets for iconsMyCartLight
  /// assets/icons/my_cart_light.svg
  static const String iconsMyCartLight = "assets/icons/my_cart_light.svg";

  /// Assets for iconsProfileDark
  /// assets/icons/profile_dark.svg
  static const String iconsProfileDark = "assets/icons/profile_dark.svg";

  /// Assets for iconsProfileLight
  /// assets/icons/profile_light.svg
  static const String iconsProfileLight = "assets/icons/profile_light.svg";



  static String searchIcon(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? "assets/icons/Search_dark.svg"
          : "assets/icons/Search_light.svg";
  /// Assets for iconsSettingsLight
  /// assets/icons/settings_light.svg
  static const String iconsSettingsLight = "assets/icons/settings_light.svg";

  /// Assets for iconsSupportLight
  /// assets/icons/support_light.svg
  static const String iconsSupportLight = "assets/icons/support_light.svg";


  static String iconNotification(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? "assets/icons/Notifications_dark.svg"
          : "assets/icons/Notifications_light.svg";
}
