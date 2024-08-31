import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionHistoryHeader()],
    );
  }
}
