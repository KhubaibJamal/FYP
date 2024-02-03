import 'package:flutter/material.dart';
import 'package:fyp/home/buttons.dart';
import 'package:fyp/home/search_bars.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // buttons widgets
            const Buttons(),

            // search bar
            SearchBars(),
          ],
        ),
      ),
    );
  }
}
