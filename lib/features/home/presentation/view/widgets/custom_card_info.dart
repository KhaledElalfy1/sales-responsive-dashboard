import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_colors.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';

class CustomCardInfo extends StatelessWidget {
  const CustomCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
            image: AssetImage('assets/images/Card.png'), fit: BoxFit.fill),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Universal Card',
            style: AppFonts.semiBold17(context).copyWith(color: Colors.white),
          ),
          const Spacer(),
          Text(
            '5214 4321 5678 4345',
            style: AppFonts.semiBold30(context).copyWith(color: Colors.white),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'VALID THRU',
                style: AppFonts.semiBold17(context)
                    .copyWith(fontSize: 15, color: Colors.white),
              ),
              Text(
                '12/25',
                style: AppFonts.semiBold17(context)
                    .copyWith(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
