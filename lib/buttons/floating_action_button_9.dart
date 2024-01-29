import 'package:flutter/material.dart';

class FloatingActionButton9 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  const FloatingActionButton9(
      {super.key, required this.btnText, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(Icons.add),
      label: Text(btnText),
      onPressed: onPress,
    );
  }
}
