import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "All Expenses",
          style: AppStyles.textStyleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffF1F1F1)),
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Text(
                "Monthly",
                style: AppStyles.textStyleMedium16,
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
        )
      ],
    );
  }
}
