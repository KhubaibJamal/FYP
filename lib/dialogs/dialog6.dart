import 'package:flutter/material.dart';

class Dialog6 extends StatelessWidget {
  const Dialog6({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF7F9F80),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      title: const Text(
        "WElCOME!",
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFF124076),
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const Text(
        "Get widget is one of the largest open source UI Library for mobile apps",
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFF124076),
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        CustomBtn(
          text: 'Skip',
          onTap: () {},
        ),
        CustomBtn(
          text: 'More',
          onTap: () {},
        ),
      ],
    );
  }
}

class CustomBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomBtn({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFF9E897),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
