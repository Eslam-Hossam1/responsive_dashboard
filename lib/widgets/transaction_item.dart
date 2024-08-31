import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          transactionModel.title,
          style: AppStyles.textStyleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.subTitle,
          style: AppStyles.textStyleRegular16
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.price,
          style: AppStyles.textStyleSemiBold20.copyWith(
              color: transactionModel.isWithdrawal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
