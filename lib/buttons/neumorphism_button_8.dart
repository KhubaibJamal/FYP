import 'package:flutter/material.dart';

class NeumorphismButton8 extends StatelessWidget {
  const NeumorphismButton8({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          height: 50,
          width: 200,
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
          child: const Center(
            child: Text(
              "Hello world",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
