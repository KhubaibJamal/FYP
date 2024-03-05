import 'package:flutter/material.dart';

class AppBar8 extends StatelessWidget {
  const AppBar8({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFF344955),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      title: const Text(
        "Widget World",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notification_add,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 5),
        ClipOval(
          child: Image.network(
            'https://media.istockphoto.com/id/610842118/photo/when-my-hair-looks-good-i-feel-good.jpg?s=612x612&w=0&k=20&c=PJ3LXzLptLQWT54xJdj9yhayRqLhS9FWHg6md_S7tUU=',
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
