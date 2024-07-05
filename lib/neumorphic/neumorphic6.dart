import 'package:flutter/material.dart';

class Neumorphic6 extends StatefulWidget implements PreferredSizeWidget {
  Neumorphic6({super.key});

  @override
  _Neumorphic6State createState() => _Neumorphic6State();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _Neumorphic6State extends State<Neumorphic6> {
  bool isPress = false;
  final double bevel = 10.0;

  @override
  Widget build(BuildContext context) {
    final color = Colors.grey.shade200;
    final blurOffset = Offset(bevel / 2, bevel / 2);

    return GestureDetector(
      onTapDown: (_) => setState(() => isPress = true),
      onTapUp: (_) => setState(() => isPress = false),
      onTapCancel: () => setState(() => isPress = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(bevel * 2),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              isPress ? color : color.mix(Colors.black, 0.1),
              isPress ? color.mix(Colors.black, 0.5) : color,
              isPress ? color.mix(Colors.black, 0.5) : color,
              color.mix(Colors.white, isPress ? 0.2 : 0.5),
            ],
            stops: const [0.0, 0.3, 0.6, 1.0],
          ),
          boxShadow: isPress
              ? null
              : [
                  BoxShadow(
                    blurRadius: bevel,
                    offset: -blurOffset,
                    color: color.mix(Colors.white, 0.6),
                  ),
                  BoxShadow(
                    blurRadius: bevel,
                    offset: blurOffset,
                    color: color.mix(Colors.black, 0.3),
                  ),
                ],
        ),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Color(0xFF442C2E),
            ),
            onPressed: () {},
          ),
          title: const Text(
            "Widget World",
            style: TextStyle(color: Color(0xFF442C2E)),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.share_outlined,
                color: Color(0xFF442C2E),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFF442C2E),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}
