import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/desktop_body.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/mobile_income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_latest_transaction_section.dart';
import 'package:responsive_dashboard/widgets/right_part_section.dart';

class DashbourdMobileLayout extends StatelessWidget {
  const DashbourdMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          DesktobBody(),
          SizedBox(
            height: 24,
          ),
          MyCardAndLatestTransactionSection(),
          MobileIncomeSection()
        ],
      ),
    );
  }
}
