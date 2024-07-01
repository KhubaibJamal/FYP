import 'package:flutter/material.dart';

class NavBar9 extends StatefulWidget {
  const NavBar9({Key? key}) : super(key: key);

  @override
  _NavBar9State createState() => _NavBar9State();
}

class _NavBar9State extends State<NavBar9> {
  @override
  Widget build(BuildContext context) {
    double height = 56;
    const backgroundColor = Color(0xFF803D3B);

    return BottomAppBar(
      color: backgroundColor,
      elevation: 0,
      child: Stack(
        children: [
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIcon(
                  text: "Home",
                  icon: Icons.home_outlined,
                  selected: true,
                  onPressed: () {},
                ),
                NavBarIcon(
                  text: "Search",
                  icon: Icons.search_outlined,
                  selected: false,
                  onPressed: () {},
                ),
                NavBarIcon(
                  text: "Cart",
                  icon: Icons.local_grocery_store_outlined,
                  selected: false,
                  onPressed: () {},
                ),
                NavBarIcon(
                  text: "Calendar",
                  icon: Icons.date_range_outlined,
                  selected: false,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    Key? key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? const Color(0xffE4C59E) : Colors.black54,
          ),
        ),
      ],
    );
  }
}
