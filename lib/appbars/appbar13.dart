import 'package:flutter/material.dart';

class AppBar13 extends StatelessWidget {
  const AppBar13({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFEDBD0),
      elevation: 1,
      leading: IconButton(
        icon: const Icon(
          Icons.close,
          color: Color(0xFF442C2E),
        ),
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
      title: const Text(
        "Widget World",
        style: TextStyle(color: Color(0xFF442C2E)),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.share_outlined,
            color: Color(0xFF442C2E),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: Color(0xFF442C2E),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
