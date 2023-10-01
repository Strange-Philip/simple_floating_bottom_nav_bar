# ✨ Simple Floating Bottom Navigation Bar


Fully customizable floating bottom navigation package for flutter.

## 🎮 How To Use

```dart
import 'package:flutter/material.dart';
import 'package:simple_floating_bottom_nav_bar/floating_bottom_nav_bar.dart';
import 'package:simple_floating_bottom_nav_bar/floating_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple Floating NavBar Demo',
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FloatingBottomNavItem> bottomNavItems = const [
    FloatingBottomNavItem(
      inactiveIcon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: "Home",
    ),
    FloatingBottomNavItem(
      inactiveIcon: Icon(Icons.search_outlined),
      activeIcon: Icon(Icons.search),
      label: "Search",
    ),
    FloatingBottomNavItem(
      inactiveIcon: Icon(Icons.add_circle_outline),
      activeIcon: Icon(Icons.add_circle),
      label: "Add",
    ),
    FloatingBottomNavItem(
      inactiveIcon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  List<Widget> pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return FloatingBottomNavBar(
      pages: pages,
      items: bottomNavItems,
      initialPageIndex: 0,
      backgroundColor: Colors.green,
      bottomPadding: 10,
      elevation: 0,
      radius: 20,
      width: 300,
      height: 65,
    );
  }
}


```


<img width="450" height="900" src="https://raw.githubusercontent.com/Strange-Philip/simple_floating_bottom_nav_bar/main/images/floating.gif">

### ❗️ Note

- Pull requests are welcomed, especially the animations 🙂

## ⭐️ License

MIT License