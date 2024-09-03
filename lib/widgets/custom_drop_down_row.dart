import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomDrobDownRow extends StatelessWidget {
  const CustomDrobDownRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF1F1F1)),
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            "Monthly",
            style: AppStyles.textStyleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.5707963268,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xff064061),
              ))
        ],
      ),
    );
  }
}
