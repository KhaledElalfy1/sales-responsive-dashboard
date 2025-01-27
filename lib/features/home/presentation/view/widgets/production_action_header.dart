

import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_colors.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';

class ProductActionHeader extends StatelessWidget {
  const ProductActionHeader({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppFonts.bold25(context),
        ),
        const Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text(
            'View all',
            style: AppFonts.bold15(context)
                .copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}

