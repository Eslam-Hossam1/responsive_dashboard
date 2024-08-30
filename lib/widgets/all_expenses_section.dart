import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/expense_item.dart';
import 'package:responsive_dashboard/widgets/expense_items_row.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      widget: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          ExpenseItemsRow()
        ],
      ),
    );
  }
}
