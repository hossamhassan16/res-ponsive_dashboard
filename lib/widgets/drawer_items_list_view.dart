import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My transaction", image: Assets.imagesMyTransaction),
    DrawerItemModel(title: "statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet account", image: Assets.imagesWalletAccount),
    DrawerItemModel(title: "my investments", image: Assets.imagesMyInvestments),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (activeIndex != index) {
                  activeIndex = index;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
