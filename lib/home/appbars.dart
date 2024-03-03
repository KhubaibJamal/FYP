import 'package:flutter/material.dart';
import 'package:fyp/appbars/appbar1.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

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
              AppBar1(),
            ],
          ),
        ),
      ),
    );
  }
}
