import 'package:flutter/material.dart';

class AppBar9 extends StatelessWidget {
  const AppBar9({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff114232),
      centerTitle: true,
      leading: IconButton(
        tooltip: 'menu',
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {},
      ),
      title: const Text(
        "Widget World",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      actions: const [
        Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
