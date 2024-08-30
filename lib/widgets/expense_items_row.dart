import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expense_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/expense_item.dart';

class ExpenseItemsRow extends StatefulWidget {
  const ExpenseItemsRow({super.key});

  @override
  State<ExpenseItemsRow> createState() => _ExpenseItemsRowState();
}

class _ExpenseItemsRowState extends State<ExpenseItemsRow> {
  final List<ExpenseModel> items = const [
    ExpenseModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    ExpenseModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    ExpenseModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            udateCurrentIndex(0);
          },
          child: ExpenseItem(
            isSelected: currentIndex == 0,
            expenseModel: items[0],
          ),
        )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            udateCurrentIndex(1);
          },
          child: ExpenseItem(
            isSelected: currentIndex == 1,
            expenseModel: items[1],
          ),
        )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            udateCurrentIndex(2);
          },
          child: ExpenseItem(
            isSelected: currentIndex == 2,
            expenseModel: items[2],
          ),
        )),
      ],
    );
  }

  void udateCurrentIndex(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
