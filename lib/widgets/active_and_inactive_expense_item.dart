import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expense_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/expense_item_header.dart';

class InActiveExpenseItem extends StatelessWidget {
  const InActiveExpenseItem({
    super.key,
    required this.expenseModel,
  });

  final ExpenseModel expenseModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF1F1F1)),
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpenseItemHeader(
            isSelected: false,
            image: expenseModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            expenseModel.title,
            style: AppStyles.textStyleSemiBold16,
          ),
          Text(
            expenseModel.date,
            style: AppStyles.textStyleRegular14,
          ),
          Text(
            expenseModel.price,
            style: AppStyles.textStyleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveExpenseItem extends StatelessWidget {
  const ActiveExpenseItem({
    super.key,
    required this.expenseModel,
  });

  final ExpenseModel expenseModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpenseItemHeader(
            isSelected: true,
            image: expenseModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            expenseModel.title,
            style: AppStyles.textStyleSemiBold16.copyWith(color: Colors.white),
          ),
          Text(
            expenseModel.date,
            style: AppStyles.textStyleRegular14
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          Text(
            expenseModel.price,
            style: AppStyles.textStyleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
