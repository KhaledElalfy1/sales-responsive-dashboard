import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_responsive_dashboard/core/utils/app_icons.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/custom_card_info.dart';

class CardInfoSection extends StatelessWidget {
  const CardInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 427 / 285,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            AppIcons.iconsCart(context),
            fit: BoxFit.fill,   
          ),
          const Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(10 / 360),
              child: CustomCardInfo(),
            ),
          ),
        ],
      ),
    );
  }
}
