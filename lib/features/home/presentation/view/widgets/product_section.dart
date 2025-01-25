import 'package:flutter/material.dart';
import 'package:sales_responsive_dashboard/features/home/presentation/view/widgets/product_section_header.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        ProductSectionHeader()
      ],
    );
  }
}

