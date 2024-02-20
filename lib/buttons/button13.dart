import 'package:flutter/material.dart';

class TextButton13 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  const TextButton13({super.key, required this.btnText, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.grey[200],
      ),
      onPressed: onPress,
      child: Text(btnText),
    );
  }
}
