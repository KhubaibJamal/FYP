import 'package:flutter/material.dart';
import 'package:fyp/list%20tile/listtile1.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebebeb),
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile1(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
// FFD23F
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