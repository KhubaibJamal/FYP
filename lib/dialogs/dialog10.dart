import 'package:flutter/material.dart';

class Dialog10 extends StatelessWidget {
  const Dialog10({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xff222831),
      titlePadding: EdgeInsets.zero,
      title: Image.network(
        'https://static.pakwheels.com/2024/01/2025-Honda-Civic-Facelift-US-1-850x526-1.jpg',
      ),
      content: const Text(
        "Photos - 2025 Honda Civic Hybrid Facelift Revealed - PakWheels Blog",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
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
