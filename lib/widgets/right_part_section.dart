import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_latest_transaction_section.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/transaction_history_section.dart';

class RightPartSection extends StatelessWidget {
  const RightPartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.only(right: 32),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          MyCardAndLatestTransactionSection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
// CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: SizedBox(
//               height: 40,
//             ),
//           ),
//           SliverToBoxAdapter(child: MyCardSection()),
//           SliverToBoxAdapter(
//             child: Divider(
//               color: Color(0xffF1F1F1),
//               height: 40,
//             ),
//           ),
//           SliverToBoxAdapter(child: TransactionHistorySection()),
//           SliverToBoxAdapter(
//             child: SizedBox(
//               height: 24,
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: IncomeSection(),
//           )
//         ],
//       ),