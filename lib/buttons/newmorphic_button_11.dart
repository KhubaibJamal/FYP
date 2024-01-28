import 'package:flutter/material.dart';

class NeumorphicButton11 extends StatelessWidget {
  const NeumorphicButton11({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 100,
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
        child: const Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
