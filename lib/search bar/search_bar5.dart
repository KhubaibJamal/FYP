import 'package:flutter/material.dart';

class NeumorphismSearchBar5 extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final double bevel;
  final Offset blurOffset;
  final Color color;
  NeumorphismSearchBar5({
    super.key,
    required this.controller,
    required this.hintText,
    this.bevel = 10.0,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200;

  @override
  State<NeumorphismSearchBar5> createState() => _NeumorphismSearchBar5State();
}

class _NeumorphismSearchBar5State extends State<NeumorphismSearchBar5> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    return Listener(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.bevel * 2),
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
        child: TextField(
          controller: widget.controller,
          onChanged: (value) {
            //Do something wi
          },
          style: const TextStyle(fontSize: 14, color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[500]!,
            ),
            filled: true,
            fillColor: Colors.transparent,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.75)),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
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
