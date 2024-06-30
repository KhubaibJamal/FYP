import 'package:flutter/material.dart';
import 'package:fyp/navigation%20bar/nav_bar1.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
