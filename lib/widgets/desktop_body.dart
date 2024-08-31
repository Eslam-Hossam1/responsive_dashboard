import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoices_section.dart';

class DesktobBody extends StatelessWidget {
  const DesktobBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverToBoxAdapter(child: AllExpensesSection()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(child: QuickInvoicesSection())
      ],
    );
  }
}
