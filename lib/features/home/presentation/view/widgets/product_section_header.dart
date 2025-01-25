import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';
import 'package:sales_responsive_dashboard/core/utils/app_icons.dart';
import 'package:sales_responsive_dashboard/core/utils/app_images.dart';
class ProductSectionHeader extends StatelessWidget {
  const ProductSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.person),
        const SizedBox(width: 10),
        Text(
          'Robert Fox',
          style: AppFonts.medium20(context),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.searchIcon(context),
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: Badge.count(
            count: 3,
            child: SvgPicture.asset(
              AppIcons.iconNotification(context),
            ),
          ),
        ),
      ],
    );
  }
}
