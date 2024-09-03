import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.textColor, this.backgroundColor, required this.text});
  final Color? textColor;
  final Color? backgroundColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 62,
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: AppStyles.textStyleSemiBold18(context)
                .copyWith(color: textColor),
          ),
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ));
  }
}
