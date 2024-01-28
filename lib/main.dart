import 'package:flutter/material.dart';
import 'package:fyp/buttons/alert_button_10.dart';
import 'package:fyp/buttons/floating_action_button_9.dart';
import 'package:fyp/buttons/gradient_button_1.dart';
import 'package:fyp/buttons/gradient_rounded_button_3.dart';
import 'package:fyp/buttons/icon_button_5.dart';
import 'package:fyp/buttons/loading_animation_button_6.dart';
import 'package:fyp/buttons/neumorphic_button_12.dart';
import 'package:fyp/buttons/neumorphism_button_8.dart';
import 'package:fyp/buttons/neumorphic_button_11.dart';
import 'package:fyp/buttons/outline_button_2.dart';
import 'package:fyp/buttons/outline_rounded_button_4.dart';
import 'package:fyp/buttons/text_button_13.dart';
import 'package:fyp/buttons/toggle_animation_button_7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FYP',
      theme: ThemeData(),
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const GradientButton1(),
                const SizedBox(height: 10),
                const OutlineButton2(),
                const SizedBox(height: 10),
                const GradientRoundedButton3(),
                const SizedBox(height: 10),
                const OutlineRoundedButton4(),
                const SizedBox(height: 10),
                const IconButton5(),
                const SizedBox(height: 10),
                const LoadingAnimatedButton6(),
                const SizedBox(height: 10),
                const ToggleAnimatedIconButton7(),
                const SizedBox(height: 10),
                const NeumorphismButton8(),
                const SizedBox(height: 10),
                const FloatingActionButton9(),
                const SizedBox(height: 10),
                const AlertButton10(),
                const SizedBox(height: 10),
                const NeumorphicButton11(),
                const SizedBox(height: 10),
                const NeumorphicButton12(),
                const SizedBox(height: 10),
                TextButton13(btnText: "Hello World", onPress: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
