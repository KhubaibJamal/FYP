import 'package:flutter/material.dart';
import 'package:fyp/appbars/appbar1.dart';
import 'package:fyp/appbars/appbar10.dart';
import 'package:fyp/appbars/appbar11.dart';
import 'package:fyp/appbars/appbar2.dart';
import 'package:fyp/appbars/appbar3.dart';
import 'package:fyp/appbars/appbar4.dart';
import 'package:fyp/appbars/appbar5.dart';
import 'package:fyp/appbars/appbar6.dart';
import 'package:fyp/appbars/appbar7.dart';
import 'package:fyp/appbars/appbar8.dart';
import 'package:fyp/appbars/appbar9.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              AppBar1(),
              SizedBox(height: 10),
              AppBar2(),
              SizedBox(height: 10),
              AppBar3(),
              SizedBox(height: 10),
              AppBar4(),
              SizedBox(height: 10),
              AppBar5(),
              SizedBox(height: 10),
              AppBar6(),
              SizedBox(height: 10),
              AppBar7(),
              SizedBox(height: 10),
              AppBar8(),
              SizedBox(height: 10),
              AppBar9(),
              SizedBox(height: 10),
              AppBar10(),
              SizedBox(height: 10),
              AppBar11(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
