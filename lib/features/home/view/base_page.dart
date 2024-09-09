// 🐦 Flutter imports:

//  Package imports:

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
// 🌎 Project imports:

// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/config/theme/color_scheme.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/services/router/router.gr.dart';

@RoutePage()
class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ShareRoute(),
        HomeRoute(),
        HomeRoute(),
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: context.colorScheme.primary,
        child: Icon(Icons.add, color: context.colorScheme.onPrimary),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context, tabsRouter) =>
          AnimatedBottomNavigationBar.builder(
        itemCount: 4,
        tabBuilder: (index, isActive) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage.asset(
              _items[index].iconPath,
              color: isActive
                  ? context.colorScheme.primary
                  : context.colorScheme.secondaryText,
            ),
            5.verticalSpace,
            AppText.titleSmall(
              _items[index].label!,
              color: isActive
                  ? context.colorScheme.primary
                  : context.colorScheme.secondaryText,
            ),
          ],
        ),
        activeIndex: tabsRouter.activeIndex,
        gapLocation: GapLocation.center,
        height: 80.h,
        notchSmoothness: NotchSmoothness.sharpEdge,
        onTap: (index) {
          tabsRouter.setActiveIndex(index);
        },
      ),
    );
  }

  final List<Item> _items = [
    Item(iconPath: Assets.icons.home, label: 'Home'),
    Item(iconPath: Assets.icons.share, label: 'Share'),
    Item(iconPath: Assets.icons.promotion, label: 'Promotion'),
    Item(iconPath: Assets.icons.notification, label: 'Profile'),
  ];
}

class Item {
  final String iconPath;
  final String? label;

  Item({required this.iconPath, this.label});
}
