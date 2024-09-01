import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/details_item_model.dart';
import 'package:responsive_dashboard/widgets/details_item.dart';

class DetailsItemsListView extends StatelessWidget {
  const DetailsItemsListView({super.key});
  static const items = [
    DetailsItemModel(
        title: "Design service", value: "40% ", color: Color(0xff208CC8)),
    DetailsItemModel(
        title: "Design product", value: "25% ", color: Color(0xff4EB7F2)),
    DetailsItemModel(
        title: "Product royalti", value: "20% ", color: Color(0xff064061)),
    DetailsItemModel(title: "Other", value: "22%% ", color: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return DetailsItem(detailsItemModel: items[index]);
      },
    );
  }
}
