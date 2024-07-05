import 'package:flutter/material.dart';

class Neumorphic14 extends StatefulWidget {
  Neumorphic14({
    Key? key,
    this.bevel = 10.0,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200;

  final double bevel;
  final Offset blurOffset;
  final Color color;
  @override
  State<Neumorphic14> createState() => _Neumorphic14State();
}

class _Neumorphic14State extends State<Neumorphic14> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.bevel),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            isPress ? color : color.mix(Colors.black, 0.1),
            isPress ? color.mix(Colors.black, 0.5) : color,
            isPress ? color.mix(Colors.black, 0.5) : color,
            color.mix(Colors.white, isPress ? 0.2 : 0.5),
          ],
          stops: const [0.0, 0.3, 0.6, 1.6],
        ),
        boxShadow: isPress
            ? null
            : [
                BoxShadow(
                  blurRadius: widget.bevel,
                  offset: -widget.blurOffset,
                  color: color.mix(Colors.white, 0.6),
                ),
                BoxShadow(
                  blurRadius: widget.bevel,
                  offset: widget.blurOffset,
                  color: color.mix(Colors.black, 0.3),
                ),
              ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
            ),
          ],
        ),
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
            color: selected ? Colors.grey : Colors.black54,
          ),
        ),
      ],
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}
