import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';
import 'package:responsive_dashboard/widgets/custom_title_text_field.dart';

class QuickInvoicesFormSubSection extends StatelessWidget {
  const QuickInvoicesFormSubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                  title: "Customer name", hint: "Type customer name"),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                  title: "Customer Email", hint: "Type customer email"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                  title: "Item name", hint: "Type customer email"),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(title: "Item mount", hint: "USD"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: "Add more details",
              textColor: Color(0xff4EB7F2),
              backgroundColor: Colors.transparent,
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomButton(
              text: "Send Money",
              textColor: Colors.white,
              backgroundColor: Color(0xff4EB7F2),
            )),
          ],
        )
      ],
    );
  }
}
