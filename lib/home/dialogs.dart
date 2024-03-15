import 'package:flutter/material.dart';
import 'package:fyp/dialogs/dialog1.dart';
import 'package:fyp/dialogs/dialog2.dart';

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ],
          ),
        ),
      ),
    );
  }
}
