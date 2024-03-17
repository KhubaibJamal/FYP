import 'package:flutter/material.dart';
import 'package:fyp/dialogs/dialog1.dart';
import 'package:fyp/dialogs/dialog2.dart';
import 'package:fyp/dialogs/dialog3.dart';
import 'package:fyp/dialogs/dialog4.dart';
import 'package:fyp/dialogs/dialog5.dart';

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

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
              Dialog1(),
              Dialog2(
                title: "Confirm?",
                description: 'Want to change?',
              ),
              Dialog3(),
              Dialog4(),
              Dialog5(),
            ],
          ),
        ),
      ),
    );
  }
}
