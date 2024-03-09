import 'package:flutter/material.dart';

class InputTextField15 extends StatelessWidget {
  const InputTextField15({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(15),
      height: height / 3.5,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(
          width: 1.5,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        maxLines: 3,
        style: TextStyle(
          fontSize: 18,
        ),
        decoration: InputDecoration(
          hintText: "What can we improve?",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
