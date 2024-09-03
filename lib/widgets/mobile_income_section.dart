import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/details_items_list_view.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_header.dart';
import 'package:responsive_dashboard/widgets/income_section_body.dart';

class MobileIncomeSection extends StatelessWidget {
  const MobileIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      widget: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 28,
          ),
          IncomeSectionBody()
        ],
      ),
    );
  }
}
