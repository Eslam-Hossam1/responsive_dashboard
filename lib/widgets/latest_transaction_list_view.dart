import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const usersList = [
    UserInfoModel(
        image: Assets.imagesAvatar,
        title: "Lekan Okeowo",
        subTitle: "demo@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: "Lekan Okeowo",
        subTitle: "demo@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: usersList
            .asMap()
            .entries
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e.value)))
            .toList(),
      ),
    );
    return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
              child: UserInfoListTile(userInfoModel: usersList[index]));
        },
      ),
    );
  }
}
