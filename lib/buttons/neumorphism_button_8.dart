import 'package:flutter/material.dart';

class NeumorphismButton8 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  final double height;
  final double width;
  const NeumorphismButton8(
      {super.key,
      required this.btnText,
      required this.onPress,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.transparent.withOpacity(0.4),
                offset: const Offset(-3, -4),
                blurRadius: 2,
                spreadRadius: 1,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.15),
                Colors.white.withOpacity(0.05),
              ],
            ),
          ),
          child: Center(
            child: Text(
              btnText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
