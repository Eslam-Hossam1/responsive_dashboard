import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/credit_card.dart';

class CreditCardsPageView extends StatelessWidget {
  const CreditCardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: const CreditCard(),
        ),
      ),
    );
  }
}
