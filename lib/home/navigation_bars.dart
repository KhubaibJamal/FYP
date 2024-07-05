import 'package:flutter/material.dart';
import 'package:fyp/navigation%20bar/nav_bar1.dart';
import 'package:fyp/navigation%20bar/nav_bar10.dart';
import 'package:fyp/navigation%20bar/nav_bar11.dart';
import 'package:fyp/navigation%20bar/nav_bar12.dart';
import 'package:fyp/navigation%20bar/nav_bar2.dart';
import 'package:fyp/navigation%20bar/nav_bar3.dart';
import 'package:fyp/navigation%20bar/nav_bar4.dart';
import 'package:fyp/navigation%20bar/nav_bar5.dart';
import 'package:fyp/navigation%20bar/nav_bar6.dart';
import 'package:fyp/navigation%20bar/nav_bar7.dart';
import 'package:fyp/navigation%20bar/nav_bar8.dart';
import 'package:fyp/navigation%20bar/nav_bar9.dart';

class NAvigationBars extends StatelessWidget {
  const NAvigationBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              const NavBar1(),
              const SizedBox(height: 20),
              const NavBar2(),
              const SizedBox(height: 20),
              const NavBar3(),
              const SizedBox(height: 20),
              const NavBar4(),
              const SizedBox(height: 20),
              const NavBar5(),
              const SizedBox(height: 20),
              const NavBar6(),
              const SizedBox(height: 20),
              const NavBar7(),
              const SizedBox(height: 20),
              const NavBar8(),
              const SizedBox(height: 20),
              const NavBar9(),
              const SizedBox(height: 20),
              const NavBar10(),
              const SizedBox(height: 20),
              const NavBar11(),
              const SizedBox(height: 20),
              NavBar12(),
            ],
          ),
        ),
      ),
    );
  }
}
