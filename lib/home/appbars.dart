import 'package:flutter/material.dart';
import 'package:fyp/appbars/appbar1.dart';
import 'package:fyp/appbars/appbar2.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
