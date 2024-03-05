import 'package:flutter/material.dart';

class AppBar10 extends StatelessWidget {
  const AppBar10({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Color(0xffEFECEC);
    return AppBar(
      backgroundColor: const Color(0xFFFC6736),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: color,
        ),
        onPressed: () {},
      ),
      title: const Text(
        "Widget World",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: color,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.attach_file, color: color),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.calendar_month, color: color),
          onPressed: () {},
        ),
        PopupMenuButton<Text>(
          iconColor: Colors.white,
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                child: Text(
                  'First',
                ),
              ),
              const PopupMenuItem(
                child: Text(
                  'second',
                ),
              ),
              const PopupMenuItem(
                child: Text(
                  'third',
                ),
              ),
            ];
          },
        )
      ],
    );
  }
}
