import 'package:flutter/material.dart';
import 'package:fyp/list%20tile/listtile1.dart';
import 'package:fyp/list%20tile/listtile2.dart';

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
              const SizedBox(height: 10),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

// 337357
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