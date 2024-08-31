import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/credit_card.dart';

class CreditCardsPageView extends StatelessWidget {
  const CreditCardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const CreditCard();
      },
    );
  }
}
