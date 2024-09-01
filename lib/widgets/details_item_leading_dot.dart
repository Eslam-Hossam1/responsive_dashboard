import 'package:flutter/material.dart';

class DetailsItemLeadingDot extends StatelessWidget {
  const DetailsItemLeadingDot({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: Container(
          height: 12,
          width: 12,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              color: color)),
    );
  }
}
