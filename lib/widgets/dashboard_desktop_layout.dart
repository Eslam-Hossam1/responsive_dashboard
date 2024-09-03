import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/desktop_body.dart';
import 'package:responsive_dashboard/widgets/right_part_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: DesktobBody(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        flex: 4,
                        child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: RightPartSection()))
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
