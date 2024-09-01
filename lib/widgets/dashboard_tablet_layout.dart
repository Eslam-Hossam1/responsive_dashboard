import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/desktop_body.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_latest_transaction_section.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
                child: Column(
              children: [
                DesktobBody(),
                SizedBox(
                  height: 24,
                ),
                MyCardAndLatestTransactionSection(),
                SizedBox(
                  height: 24,
                ),
                IncomeSection()
              ],
            )))
      ],
    );
  }
}
