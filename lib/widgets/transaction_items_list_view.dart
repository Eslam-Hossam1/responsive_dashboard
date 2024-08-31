import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionItemsListView extends StatelessWidget {
  const TransactionItemsListView({super.key});
  static const items = [
    TransactionModel(
        title: "Cash Withdrawal",
        subTitle: "13 Apr, 2022 ",
        price: r"$20,129",
        isWithdrawal: true),
    TransactionModel(
        title: "Landing Page project",
        subTitle: "13 Apr, 2022 at 3:30 PM ",
        price: r"$$2,000",
        isWithdrawal: true),
    TransactionModel(
        title: "Juni Mobile App project",
        subTitle: "13 Apr, 2022 at 3:30 PM ",
        price: r"$20,129",
        isWithdrawal: true),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
