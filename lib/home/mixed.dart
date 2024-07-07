import 'package:flutter/material.dart';
import 'package:fyp/home/home.dart';
import 'package:fyp/mixed/m1_chat_screen.dart';
import 'package:fyp/mixed/m1_gridview_screen.dart';

class Mixed extends StatelessWidget {
  const Mixed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeWidget(
                width: 500,
                title: "ChatScreen",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              HomeWidget(
                width: 500,
                title: "GridViewScreen",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GridViewScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
