import 'package:flutter/material.dart';

/// Reusable widget for Bottom Navigation Items.
class CustomBottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  const CustomBottomNavBarItem(
      {required this.initialLocation,
      required super.icon,
      super.label,
      Widget? activeIcon})
      : super(activeIcon: activeIcon ?? icon);
}
