import 'package:flutter/material.dart';
import 'package:fyp/dialogs/dialog1.dart';

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Dialog1(),
            ],
          ),
        ),
      ),
    );
  }
}
