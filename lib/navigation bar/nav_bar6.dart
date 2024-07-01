import 'package:flutter/material.dart';

class NavBar6 extends StatefulWidget {
  const NavBar6({Key? key}) : super(key: key);

  @override
  _NavBar6State createState() => _NavBar6State();
}

class _NavBar6State extends State<NavBar6> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 12;

    const primaryColor = Colors.blue;
    const secondaryColor = Colors.black54;
    const backgroundColor = Color(0xFFE2DFD0);
    const shadowColor = Colors.grey;
    double elevation = 1;

    return BottomAppBar(
      color: const Color(0xFF524C42),
      elevation: 0,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, height),
            painter: BottomNavCurvePainter(
              backgroundColor: backgroundColor,
              shadowColor: shadowColor,
              elevation: elevation,
            ),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              backgroundColor: primaryColor,
              elevation: 0.1,
              onPressed: () {},
              child: const Icon(Icons.shopping_basket),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarIcon(
                text: "Home",
                icon: Icons.home_outlined,
                selected: true,
                onPressed: () {},
                defaultColor: secondaryColor,
                selectedColor: primaryColor,
              ),
              NavBarIcon(
                text: "Search",
                icon: Icons.search_outlined,
                selected: false,
                onPressed: () {},
                defaultColor: secondaryColor,
                selectedColor: primaryColor,
              ),
              const SizedBox(width: 56),
              NavBarIcon(
                  text: "Cart",
                  icon: Icons.local_grocery_store_outlined,
                  selected: false,
                  onPressed: () {},
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor),
              NavBarIcon(
                text: "Calendar",
                icon: Icons.date_range_outlined,
                selected: false,
                onPressed: () {},
                selectedColor: primaryColor,
                defaultColor: secondaryColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter({
    this.backgroundColor = Colors.white,
    this.insetRadius = 38,
    this.shadowColor = Colors.grey,
    this.elevation = 1,
  });

  Color backgroundColor;
  Color shadowColor;
  double elevation;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path();

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;

    path.lineTo(insetCurveBeginnningX, 0);
    path.arcToPoint(Offset(insetCurveEndX, 0),
        radius: const Radius.circular(41), clockwise: true);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height + 56);
    path.lineTo(0, size.height + 56);
    canvas.drawShadow(path, shadowColor, elevation, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      this.selectedColor = const Color(0xffFF8527),
      this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
