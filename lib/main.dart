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
      home: const Scaffold(
        // backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GradientButton1(),
                SizedBox(height: 10),
                OutlineButton2(),
                SizedBox(height: 10),
                GradientRoundedButton3(),
                SizedBox(height: 10),
                OutlineRoundedButton4(),
                SizedBox(height: 10),
                IconButton5(),
                SizedBox(height: 10),
                LoadingAnimatedButton6(),
                SizedBox(height: 10),
                ToggleAnimatedIconButton7(),
                SizedBox(height: 10),
                NeumorphismButton8(),
                SizedBox(height: 10),
                FloatingActionButton9(),
                SizedBox(height: 10),
                AlertButton10(),
                SizedBox(height: 10),
                NeumorphicButton11(),
                SizedBox(height: 10),
                NeumorphicButton12(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
