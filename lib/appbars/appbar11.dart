import 'package:flutter/material.dart';

class AppBar11 extends StatelessWidget {
  const AppBar11({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
        ),
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
      title: const Text(
        "Widget Worlds",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      titleSpacing: 00.0,
      centerTitle: true,
      toolbarHeight: 60.2,
      toolbarOpacity: 0.8,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      elevation: 0.00,
      backgroundColor: const Color(0xFF001524),
    );
  }
}
