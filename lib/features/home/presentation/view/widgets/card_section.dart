import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/core/utils/app_fonts.dart';
import 'package:sales_responsive_dashboard/core/widgets/custom_elevated_button.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/card_info_section.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/card_item_list_view.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text('Payment Card', style: AppFonts.bold25(context)),
            const SizedBox(height: 30),
            const CardInfoSection(),
            const SizedBox(height: 30),
            Text(
              'Your Card',
              style: AppFonts.bold25(context),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                '3 ITEMS',
                style: AppFonts.medium17(context),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CardItemListView(),
            const Divider(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: AppFonts.bold25(context),
                ),
                Text(
                  '\$ 1,200',
                  style: AppFonts.bold25(context),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              child: CustomElevatedButton(
                onPressed: () {},
                text: "Checkout",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
