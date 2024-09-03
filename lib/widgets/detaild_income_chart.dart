import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/details_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetaildIncomeChart extends StatefulWidget {
  const DetaildIncomeChart({super.key});

  @override
  State<DetaildIncomeChart> createState() => _DetaildIncomeChartState();
}

class _DetaildIncomeChartState extends State<DetaildIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        getPieChartSectionData(
          value: 40,
          color: const Color(0xFF208BC7),
          title: "Design service",
          offset: 1.5,
          activeIndex: activeIndex,
          index: 0,
        ),
        getPieChartSectionData(
            value: 25,
            color: const Color(0xFF4DB7F2),
            title: "Design product",
            offset: 2.3,
            activeIndex: activeIndex,
            index: 1),
        getPieChartSectionData(
            value: 20,
            color: const Color(0xFF064060),
            title: "Product royalti",
            offset: 1.5,
            activeIndex: activeIndex,
            index: 2),
        getPieChartSectionData(
            value: 22,
            color: const Color(0xFFE2DECD),
            title: "Other",
            offset: 1.5,
            activeIndex: activeIndex,
            index: 3),
      ],
    );
  }

  PieChartSectionData getPieChartSectionData(
      {required double value,
      required Color color,
      required String title,
      required double offset,
      required int activeIndex,
      required int index}) {
    return PieChartSectionData(
      value: value,
      color: color,
      titleStyle: activeIndex == index
          ? AppStyles.textStyleMedium16(context)
          : AppStyles.textStyleMedium16(context).copyWith(color: Colors.white),
      title: activeIndex == index ? title : "$value%",
      radius: activeIndex == index ? 60 : 50,
      showTitle: true,
      titlePositionPercentageOffset: activeIndex == index ? offset : null,
    );
  }
}
