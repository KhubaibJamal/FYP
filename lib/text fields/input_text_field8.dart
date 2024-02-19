import 'package:flutter/material.dart';

class InputTextField8 extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const InputTextField8({
    super.key,
    required this.textController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFe0ccfb),
      child: Row(
        children: [
          const Icon(
            Icons.lock,
            color: Color(0xFF9752f1),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: textController,
              style: const TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFd1b2f9),
                hintText: hintText,
                hintStyle:
                    TextStyle(color: const Color(0xFF9752f1).withOpacity(0.75)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
