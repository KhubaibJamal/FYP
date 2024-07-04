import 'package:flutter/material.dart';

class Neumorphic1 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  final double height;
  final double width;
  const Neumorphic1(
      {super.key,
      required this.btnText,
      required this.onPress,
      required this.height,
      required this.width});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE0E0E0),
              Color(0xFFFAFAFA),
            ],
          ),
        ),
        child: Center(
          child: Text(btnText),
        ),
      ),
    );
  }
}
