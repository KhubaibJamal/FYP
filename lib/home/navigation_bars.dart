import 'package:flutter/material.dart';
import 'package:fyp/navigation%20bar/nav_bar1.dart';
import 'package:fyp/navigation%20bar/nav_bar2.dart';
import 'package:fyp/navigation%20bar/nav_bar3.dart';
import 'package:fyp/navigation%20bar/nav_bar4.dart';
import 'package:fyp/navigation%20bar/nav_bar5.dart';
import 'package:fyp/navigation%20bar/nav_bar6.dart';
import 'package:fyp/navigation%20bar/nav_bar7.dart';
import 'package:fyp/navigation%20bar/nav_bar8.dart';

class NAvigationBars extends StatelessWidget {
  const NAvigationBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              NavBar1(),
              SizedBox(height: 20),
              NavBar2(),
              SizedBox(height: 20),
              NavBar3(),
              SizedBox(height: 20),
              NavBar4(),
              SizedBox(height: 20),
              NavBar5(),
              SizedBox(height: 20),
              NavBar6(),
              SizedBox(height: 20),
              NavBar7(),
              SizedBox(height: 20),
              NavBar8(),
            ],
          ),
        ),
      ),
    );
  }
}
