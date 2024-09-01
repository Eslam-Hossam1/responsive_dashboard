import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_drop_down_row.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        const Text(
          "All Expenses",
          style: AppStyles.textStyleSemiBold20,
        ),
        const Spacer(),
        const CustomDrobDownRow(),
      ],
    );
  }
}
