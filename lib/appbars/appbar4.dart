import 'package:flutter/material.dart';

class AppBar4 extends StatelessWidget {
  const AppBar4({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFF8527),
      elevation: 1,
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
        ),
        onPressed: () {
        },
      ),
      title: const Text(
        "Recipe",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.save, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.share, color: Colors.white),
          onPressed: () {},
        )
      ],
    );
  }
}
