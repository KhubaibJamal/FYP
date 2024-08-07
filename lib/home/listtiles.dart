import 'package:flutter/material.dart';
import 'package:fyp/list%20tile/listtile1.dart';
import 'package:fyp/list%20tile/listtile10.dart';
import 'package:fyp/list%20tile/listtile11.dart';
import 'package:fyp/list%20tile/listtile2.dart';
import 'package:fyp/list%20tile/listtile3.dart';
import 'package:fyp/list%20tile/listtile4.dart';
import 'package:fyp/list%20tile/listtile5.dart';
import 'package:fyp/list%20tile/listtile6.dart';
import 'package:fyp/list%20tile/listtile7.dart';
import 'package:fyp/list%20tile/listtile8.dart';
import 'package:fyp/list%20tile/listtile9.dart';

class ListTiles extends StatefulWidget {
  const ListTiles({super.key});

  @override
  State<ListTiles> createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  bool allowNotifications = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebebeb),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ListTile1(),
              const SizedBox(height: 10),
              ListTile2(
                text: "My Cart",
                subtitle: "5 items in your cart",
                onTap: () {},
              ),
              const SizedBox(height: 10),
              const ListTile3(
                title: 'Lily Poppins',
                likes: '130',
                subtitle: '130 Reviews',
              ),
              const SizedBox(height: 10),
              const ListTile4(
                title: "Chicken Qorma",
                subtitle: " 4.9 Reviews",
              ),
              const SizedBox(height: 10),
              const ListTile5(
                title: "Synthia Lamb",
                subtitle: '4 days ago',
                comment: 'Here are some text',
              ),
              const SizedBox(height: 10),
              const ListTile6(),
              const SizedBox(height: 10),
              const ListTile7(),
              const SizedBox(height: 10),
              ListTile8(
                title: "List Tile",
                description: 'This is tile\'s description',
              ),
              const SizedBox(height: 10),
              const ListTile9(
                title: "List Tile",
                subtitle: 'This is tile\'s description',
              ),
              const SizedBox(height: 10),
              ListTile10(
                title: "Notification",
                subtitle: "Want to receive notification?",
                switchValue: allowNotifications,
                onChanged: (value) {
                  setState(() {
                    allowNotifications = !allowNotifications;
                  });
                },
              ),
              const SizedBox(height: 10),
              const ListTile11(
                title: "Appearance",
                subtitle: "System, Dark Mode, Light Mode",
                leadingText: "System",
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
