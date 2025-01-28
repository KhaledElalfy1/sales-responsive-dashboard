import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_responsive_dashboard/core/utils/app_colors.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';
import 'package:sales_responsive_dashboard/core/utils/app_icons.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/custom_theming_switch.dart';

class DrawerSection extends StatefulWidget {
  const DrawerSection({super.key});

  @override
  State<DrawerSection> createState() => _DrawerSectionState();
}

class _DrawerSectionState extends State<DrawerSection> {
  final Map<String, dynamic> data = const {
    'Dashboard': AppIcons.iconsDashboardLight,
    'profile': AppIcons.iconsProfileLight,
    'Listing': AppIcons.iconsListingDark,
    'my cart': AppIcons.iconsMyCartLight,
    'favorite': AppIcons.iconsFavoriteLight,
    'Support': AppIcons.iconsSupportLight,
    'settings': AppIcons.iconsSettingsLight,
  };
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                AppIcons.logoIcon(context),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverList.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final key = data.keys.elementAt(index);
              final value = data.values.elementAt(index);

              return Container(
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? AppColors.primaryColor.withOpacity(0.1)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: SvgPicture.asset(
                    value,
                    colorFilter: selectedIndex == index
                        ? const ColorFilter.mode(
                            AppColors.primaryColor, BlendMode.srcIn)
                        : null,
                  ),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      key,
                      style: selectedIndex == index
                          ? AppFonts.bold20(context)
                              .copyWith(color: AppColors.primaryColor)
                          : AppFonts.semiBold20(context),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
               const CustomThemingSwitch(),
                const Expanded(child: SizedBox()),
                ListTile(
                  leading: SvgPicture.asset(AppIcons.iconsLogout(context)),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Logout',
                      style: AppFonts.semiBold20(context)
                          .copyWith(color: AppColors.red),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}

