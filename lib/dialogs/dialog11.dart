import 'package:flutter/material.dart';

class Dialog11 extends StatelessWidget {
  const Dialog11({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xffEEEEEE),
      title: const Column(
        children: [
          Icon(
            Icons.info_outline,
            color: Colors.red,
            size: 50,
          ),
          Text("Are You Sure?"),
          Text(
            "You wont be able to revert this",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
      actions: [
        CustomBtn(
          text: 'No, cancel!',
          onTap: () {},
          color: Colors.red,
        ),
        CustomBtn(
          text: 'Yes, delete it!',
          onTap: () {},
          color: Colors.green,
        ),
      ],
    );
  }
}

class CustomBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  const CustomBtn({
    super.key,
    required this.text,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
