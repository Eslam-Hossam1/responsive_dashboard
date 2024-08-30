import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_items_sliver_list.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: UserInfoListTile(
                  image: Assets.imagesAvatar3,
                  title: "Lekan Okeowo",
                  subTitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsSliverList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 8,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettings, text: "System Settings")),
                SizedBox(
                  height: 8,
                ),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, text: "Logout Account")),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
