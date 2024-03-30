import 'package:flutter/material.dart';
import 'package:fyp/list%20tile/listtile1.dart';
import 'package:fyp/list%20tile/listtile2.dart';
import 'package:fyp/list%20tile/listtile3.dart';
import 'package:fyp/list%20tile/listtile4.dart';
import 'package:fyp/list%20tile/listtile5.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({super.key});

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
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

// 12372A
// FC6736
// 0A1D56
// D24545
// 43766C
// F8FAE5
// 8CB9BD
//  bg color: 76453B text color: F8FAE5
//  bg color: ADBC9F text color: 12372A
//  bg color: 0C2D57 text color: FC6736