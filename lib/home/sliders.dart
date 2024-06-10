import 'package:flutter/material.dart';
import 'package:fyp/sliders/sliders1.dart';

class Sliders extends StatelessWidget {
  const Sliders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Sliders1(
                min: 0.0,
                max: 100.0,
                initialValue: 30.0,
                onChange: (value) {},
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
