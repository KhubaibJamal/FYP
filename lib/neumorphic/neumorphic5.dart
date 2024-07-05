

import 'package:flutter/material.dart';

class Neumorphic5 extends StatefulWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;
  final double bevel;
  final Offset blurOffset;
  final Color color;

  Neumorphic5({super.key, 
    required this.text,
    required this.imageUrl,
    required this.subtitle,
    required this.onPressed,
    this.bevel = 10.0,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200;

  @override
  State<Neumorphic5> createState() => _Neumorphic5State();
}

class _Neumorphic5State extends State<Neumorphic5> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              isPress ? widget.color : widget.color.mix(Colors.black, 0.1),
              isPress ? widget.color.mix(Colors.black, 0.5) : widget.color,
              isPress ? widget.color.mix(Colors.black, 0.5) : widget.color,
              widget.color.mix(Colors.white, isPress ? 0.2 : 0.5),
            ],
            stops: const [0.0, 0.3, 0.6, 1.6],
          ),
          boxShadow: isPress
              ? null
              : [
                  BoxShadow(
                    blurRadius: widget.bevel,
                    offset: -widget.blurOffset,
                    color: widget.color.mix(Colors.white, 0.6),
                  ),
                  BoxShadow(
                    blurRadius: widget.bevel,
                    offset: widget.blurOffset,
                    color: widget.color.mix(Colors.black, 0.3),
                  ),
                ],
        ),
        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                widget.imageUrl,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              widget.subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 10),
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
