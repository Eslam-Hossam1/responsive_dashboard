import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsSliverList extends StatefulWidget {
  const DrawerItemsSliverList({super.key});

  @override
  State<DrawerItemsSliverList> createState() => _DrawerItemsSliverListState();
}

class _DrawerItemsSliverListState extends State<DrawerItemsSliverList> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(image: Assets.imagesDashboard, text: "Dashboard"),
    DrawerItemModel(image: Assets.imagesMyTransaction, text: "My Transaction"),
    DrawerItemModel(image: Assets.imagesStatistics, text: "Statistics"),
    DrawerItemModel(image: Assets.imagesWalletamount, text: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestment, text: "My Investment"),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                if (index != currentIndex) {
                  setState(() {
                    currentIndex = index;
                  });
                }
              },
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: currentIndex == index,
              ));
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 8,
          );
        },
        itemCount: items.length);
  }
}
