import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/animations/animation1.dart';
import 'package:fyp/animations/animation2.dart';
import 'package:fyp/animations/animation3.dart';
import 'package:fyp/animations/animation4.dart';

class Animations extends StatelessWidget {
  const Animations({super.key});

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
              Animation1(),
              SizedBox(height: 20),
              Animation2(),
              SizedBox(height: 20),
              SizedBox(height: 500, child: Animation3()),
              SizedBox(height: 20),
              Animation4(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
