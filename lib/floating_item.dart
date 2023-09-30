import 'package:flutter/widgets.dart';

class FloatingBottomNavItem {
  final String? label;
  final Widget inactiveIcon;
  final Widget? activeIcon;
  const FloatingBottomNavItem({this.label, required this.inactiveIcon, this.activeIcon});
}
