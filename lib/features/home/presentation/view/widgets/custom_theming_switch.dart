
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_responsive_dashboard/core/cubit/cubit/theme_cubit.dart';
import 'package:sales_responsive_dashboard/core/utils/app_images.dart';


class CustomThemingSwitch extends StatelessWidget {
  const CustomThemingSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Transform.scale(
          scale: 1.3,
          child: Switch(
              activeColor: Colors.white,
              inactiveThumbColor: Colors.transparent,
              activeTrackColor: Colors.grey,
              inactiveTrackColor: Colors.transparent,
              inactiveThumbImage: const AssetImage(AppImages.light),
              activeThumbImage: const AssetImage(AppImages.night),
              value: context.watch<ThemeCubit>().isDark,
              onChanged: (value) {
                context.read<ThemeCubit>().changeTheme();
              }),
        ),
      ),
    );
  }
}
