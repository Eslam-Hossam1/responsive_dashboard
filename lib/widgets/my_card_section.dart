import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/credit_card.dart';
import 'package:responsive_dashboard/widgets/credit_cards_page_view.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Card",
          style: AppStyles.textStyleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        CreditCardsPageView(pageController: pageController),
        const SizedBox(
          height: 19,
        ),
        CustomDotIndicator(currentIndex: currentIndex),
      ],
    );
  }
}
