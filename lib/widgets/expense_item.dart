import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/expense_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_expense_item.dart';
import 'package:responsive_dashboard/widgets/expense_item_header.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({
    super.key,
    required this.expenseModel,
    required this.isSelected,
  });
  final bool isSelected;
  final ExpenseModel expenseModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpenseItem(expenseModel: expenseModel)
        : InActiveExpenseItem(expenseModel: expenseModel);
  }
}
