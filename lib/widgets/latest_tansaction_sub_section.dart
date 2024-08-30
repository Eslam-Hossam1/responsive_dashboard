import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_list_view.dart';

class LatestTansactionSubSection extends StatelessWidget {
  const LatestTansactionSubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.textStyleMedium16,
        ),
        LatestTransactionListView()
      ],
    );
  }
}
