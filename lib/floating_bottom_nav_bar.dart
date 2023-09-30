import 'package:simple_floating_bottom_nav_bar/floating_item.dart';
import 'package:flutter/material.dart';

class FloatingBottomNavBar extends StatefulWidget {
  final List<Widget> pages;
  final int? initialPageIndex;
  final double? elevation;
  final double? radius;
  final double? height;
  final double? width;
  final double? bottomPadding;
  final Color? backgroundColor;
  final List<FloatingBottomNavItem> items;
  final TextStyle? selectedLabelStyle;
  final TextStyle? unselectedLabelStyle;

  const FloatingBottomNavBar(
      {super.key,
      required this.pages,
      this.initialPageIndex,
      this.elevation = 0,
      this.radius = 20,
      this.backgroundColor = Colors.blue,
      this.height = 65,
      this.width = 300,
      this.bottomPadding = 15,
      required this.items,
      this.selectedLabelStyle,
      this.unselectedLabelStyle});

  @override
  State<FloatingBottomNavBar> createState() => _FloatingBottomNavBarState();
}

class _FloatingBottomNavBarState extends State<FloatingBottomNavBar> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    setState(() {
      selectedIndex = widget.initialPageIndex ?? 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widget.pages.elementAt(selectedIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius!),
            color: widget.backgroundColor,
          ),
          padding: EdgeInsets.only(bottom: widget.bottomPadding!),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            fixedColor: Colors.white,
            elevation: widget.elevation,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            selectedLabelStyle: widget.selectedLabelStyle,
            unselectedLabelStyle: widget.unselectedLabelStyle,
            onTap: onItemTapped,
            items: widget.items
                .map((item) => BottomNavigationBarItem(
                    icon: item.inactiveIcon, activeIcon: item.activeIcon, label: item.label))
                .toList(),
          )),
    );
  }
}
