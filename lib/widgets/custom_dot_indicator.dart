import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDot(isActive: index == currentIndex),
        ),
      ),
    );
  }
}
