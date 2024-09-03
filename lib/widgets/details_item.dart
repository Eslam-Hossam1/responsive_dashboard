import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/details_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/details_item_leading_dot.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({super.key, required this.detailsItemModel});
  final DetailsItemModel detailsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: DetailsItemLeadingDot(color: detailsItemModel.color),
      title: Text(
        detailsItemModel.title,
        style: AppStyles.textStyleRegular16(context),
      ),
      trailing: Text(
        detailsItemModel.value,
        style: AppStyles.textStyleMedium16(context),
      ),
    );
  }
}
