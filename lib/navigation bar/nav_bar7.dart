import 'package:flutter/material.dart';

class NavBar7 extends StatelessWidget {
  const NavBar7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xffDFD0B8),
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                text: "Home",
                icon: Icons.home,
                selected: true,
                onPressed: () {},
              ),
              IconBottomBar(
                text: "Search",
                icon: Icons.search_outlined,
                selected: false,
                onPressed: () {},
              ),
              IconBottomBar(
                text: "Cart",
                icon: Icons.local_grocery_store_outlined,
                selected: false,
                onPressed: () {},
              ),
              IconBottomBar(
                text: "Calendar",
                icon: Icons.date_range_outlined,
                selected: false,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({
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

  final primaryColor = const Color(0xff4338CA);

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
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            height: .1,
            color: selected ? primaryColor : Colors.grey.withOpacity(.75),
          ),
        )
      ],
    );
  }
}
