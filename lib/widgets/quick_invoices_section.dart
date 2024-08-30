import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_tansaction_sub_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoices_header.dart';

class QuickInvoicesSection extends StatelessWidget {
  const QuickInvoicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        widget: Column(
      children: [
        QuickInvoicesHeader(),
        SizedBox(
          height: 24,
        ),
        LatestTansactionSubSection()
      ],
    ));
  }
}
