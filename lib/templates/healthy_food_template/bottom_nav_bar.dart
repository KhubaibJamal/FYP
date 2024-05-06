import 'package:flutter/material.dart';
import 'package:fyp/templates/healthy_food_template/dashboard_screen.dart';

class BottomNavigationAppBar extends StatefulWidget {
  const BottomNavigationAppBar({super.key});

  @override
  State<BottomNavigationAppBar> createState() => _BottomNavigationAppBarState();
}

class _BottomNavigationAppBarState extends State<BottomNavigationAppBar> {
  int currentTab = 0;
  final List screens = [
    const HomePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: const Color(0xff131923),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = const HomePage();
                  currentTab = 0;
                });
              },
              child: Icon(
                Icons.home_filled,
                color: currentTab == 0
                    ? const Color(0xfffe6622)
                    : const Color(0xff414958),
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const WidgetScreen();
                  currentTab = 1;
                });
              },
              child: Icon(
                Icons.widgets,
                color: currentTab == 1
                    ? const Color(0xfffe6622)
                    : const Color(0xff414958),
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const WidgetScreen();
                  currentTab = 2;
                });
              },
              child: Icon(
                Icons.bolt,
                color: currentTab == 2
                    ? const Color(0xfffe6622)
                    : const Color(0xff414958),
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const WidgetScreen();
                  currentTab = 3;
                });
              },
              child: Icon(
                Icons.shopping_bag,
                color: currentTab == 3
                    ? const Color(0xfffe6622)
                    : const Color(0xff414958),
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
