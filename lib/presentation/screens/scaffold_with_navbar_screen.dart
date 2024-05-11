import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../helper/constant/colors_resource.dart';
import '../../helper/constant/images_resource.dart';
import '../router/routes.dart';
import '../widgets/custom_bottom_navbar_item.dart';

/// This class is an empty screen that holds the Bottom Navigation Widget.
class ScaffoldWithNavBar extends StatefulWidget {
  final String location;
  final Widget child;

  const ScaffoldWithNavBar(
      {super.key, required this.child, required this.location});

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  static List<CustomBottomNavBarItem> tabs = [
    CustomBottomNavBarItem(
      icon: SvgPicture.asset(ImagesResource.HOME_INACTIVE_ICON),
      activeIcon: SvgPicture.asset(ImagesResource.HOME_ACTIVE_ICON),
      label: '',
      initialLocation: HOME_SCREEN_ROUTE,
    ),
    CustomBottomNavBarItem(
      icon: SvgPicture.asset(ImagesResource.SEARCH_INACTIVE_ICON),
      activeIcon: SvgPicture.asset(ImagesResource.SEARCH_ACTIVE_ICON),
      label: '',
      initialLocation: SEARCH_SCREEN_ROUTE,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: widget.child),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsResource.PRIMARY_COLOR,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _goToOtherTab(context, index);
        },
        currentIndex: widget.location == HOME_SCREEN_ROUTE ? 0 : 1,
        items: tabs,
      ),
    );
  }

  void _goToOtherTab(BuildContext context, int index) {
    String location = tabs[index].initialLocation;
    context.go(location);
  }
}
