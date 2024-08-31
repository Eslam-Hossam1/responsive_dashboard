import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Transaction History",
          style: AppStyles.textStyleSemiBold20,
        ),
        Text(
          "See all",
          style: AppStyles.textStyleMedium16
              .copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
