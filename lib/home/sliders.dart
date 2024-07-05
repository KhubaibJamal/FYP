import 'package:flutter/material.dart';
import 'package:fyp/sliders/slider1.dart';
import 'package:fyp/sliders/slider2.dart';
import 'package:fyp/sliders/slider3.dart';
import 'package:fyp/sliders/slider4.dart';
import 'package:fyp/sliders/slider5.dart';
import 'package:fyp/sliders/slider6.dart';

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
              Slider1(
                min: 0.0,
                max: 100.0,
                initialValue: 30.0,
                onChange: (value) {},
              ),
              const SizedBox(height: 10),
              Slider2(
                min: 0.0,
                max: 100.0,
                initialValue: 45.0,
                onChange: (value) {},
              ),
              const SizedBox(height: 10),
              Slider3(
                min: 0.0,
                max: 100.0,
                initialValue: 25.0,
                divisions: 10,
                onChange: (value) {},
              ),
              const SizedBox(height: 10),
              Slider4(
                min: 0.0,
                max: 100.0,
                initialValue: 55.0,
                divisions: 20,
                onChange: (value) {},
              ),
              const SizedBox(height: 10),
              Slider5(
                min: 0.0,
                max: 100.0,
                initialValue: 35.0,
                onChange: (value) {},
              ),
              const SizedBox(height: 10),
              Slider6(
                min: 0.0,
                max: 100.0,
                initialValue: 25.0,
                onChange: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
