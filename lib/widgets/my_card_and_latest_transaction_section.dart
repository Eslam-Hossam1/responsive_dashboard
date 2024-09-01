import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_tansaction_sub_section.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history_section.dart';

class MyCardAndLatestTransactionSection extends StatelessWidget {
  const MyCardAndLatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        widget: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 20,
          color: Color(0xffF1F1F1),
        ),
        TransactionHistorySection()
      ],
    ));
  }
}
