import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_colors.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';
import 'package:sales_responsive_dashboard/core/widgets/custom_elevated_button.dart';

class UpgradePromotionWidget extends StatelessWidget {
  const UpgradePromotionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.primaryColor,
            Colors.black,
            Colors.black,
            AppColors.primaryColor,
          ],
          stops: [0, 0.3, 0.7, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find the item you\'ve\n been looking for',
            style: AppFonts.bold40(context),
          ),
          const SizedBox(height: 14),
          Text(
            'Upgrade your account and Get\n special offers just for you',
            style: AppFonts.medium20(context).copyWith(color: Colors.white),
          ),
          const SizedBox(height: 20),
          CustomElevatedButton(
            onPressed: () {},
            text: 'Upgrade Now',
          ),
        ],
      ),
    );
  }
}
