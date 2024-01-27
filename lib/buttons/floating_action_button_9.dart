import 'package:flutter/material.dart';

class FloatingActionButton9 extends StatelessWidget {
  const FloatingActionButton9({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(Icons.add),
      label: const Text("Hello World"),
      onPressed: () {},
    );
  }
}
