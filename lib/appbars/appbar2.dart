import 'package:flutter/material.dart';

class AppBar2 extends StatelessWidget {
  const AppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff3cb043),
      leading: IconButton(
        tooltip: 'menu',
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {},
      ),
      title: const Text(
        "Title",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
          tooltip: 'favorite',
          icon: const Icon(Icons.favorite, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          tooltip: 'search',
          icon: const Icon(Icons.search, color: Colors.white),
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
