import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/credit_card.dart';
import 'package:responsive_dashboard/widgets/credit_cards_page_view.dart';
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
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
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
        const Text(
          "My Card",
          style: AppStyles.textStyleSemiBold20,
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
