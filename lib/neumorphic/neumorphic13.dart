import 'package:flutter/material.dart';

class Neumorphic13 extends StatefulWidget {
  Neumorphic13({
    Key? key,
    this.bevel = 10.0,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200;

  final double bevel;
  final Offset blurOffset;
  final Color color;
  @override
  State<Neumorphic13> createState() => _Neumorphic13State();
}

class _Neumorphic13State extends State<Neumorphic13> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade200,
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
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40.0,
                    child: Icon(
                      Icons.eco,
                      size: 40.0,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _createDrawerItem(
                    icon: Icons.dashboard,
                    text: 'Dashboard',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.inventory,
                    text: 'Inventory',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.search,
                    text: 'Search',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.shopping_cart,
                    text: 'Online orders',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.code,
                    text: 'Codes',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.settings,
                    text: 'Settings',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  _createDrawerItem(
                    icon: Icons.info,
                    text: 'About',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    GestureTapCallback? onTap,
  }) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon, color: Colors.grey.shade800),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}
