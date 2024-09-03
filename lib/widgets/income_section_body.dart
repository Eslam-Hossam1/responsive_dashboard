import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detaild_income_chart.dart';
import 'package:responsive_dashboard/widgets/details_items_list_view.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return MediaQuery.sizeOf(context).width >= SizeConfig.desktopBreakPoint &&
            MediaQuery.sizeOf(context).width <= 1500
        ? const Padding(
            padding: EdgeInsets.all(16.0),
            child: DetaildIncomeChart(),
          )
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: DetailsItemsListView())
            ],
          );
  }
}
