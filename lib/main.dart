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
import 'package:fyp/buttons/toggle_icon_button_14.dart';

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
                GradientButton1(onPress: () {}, btnText: "Hello World"),
                const SizedBox(height: 10),
                OutlineButton2(onPress: () {}, btnText: "Hello World"),
                const SizedBox(height: 10),
                GradientRoundedButton3(onPress: () {}, btnText: "Hello World"),
                const SizedBox(height: 10),
                OutlineRoundedButton4(
                    height: 0,
                    width: 200,
                    onPress: () {},
                    btnText: "Hello World",
                    btnIcon: Icons.arrow_forward),
                const SizedBox(height: 10),
                const IconButton5(),
                const SizedBox(height: 10),
                LoadingAnimatedButton6(
                    height: 50,
                    width: 200,
                    onPress: () {},
                    btnText: "Hello World"),
                const SizedBox(height: 10),
                const ToggleAnimatedIconButton7(),
                const SizedBox(height: 10),
                NeumorphismButton8(
                  onPress: () {},
                  height: 50,
                  width: 200,
                  btnText: "Hello World",
                ),
                const SizedBox(height: 10),
                FloatingActionButton9(
                  onPress: () {},
                  btnText: "Hello World",
                ),
                const SizedBox(height: 10),
                AlertButton10(
                  onPress: () {},
                  height: 48,
                  width: 48,
                  btnText: 5.toString(),
                ),
                const SizedBox(height: 10),
                NeumorphicButton11(
                  onPress: () {},
                  height: 100,
                  width: 100,
                  btnText: "Hello",
                ),
                const SizedBox(height: 10),
                const NeumorphicButton12(),
                const SizedBox(height: 10),
                TextButton13(btnText: "Hello World", onPress: () {}),
                const SizedBox(height: 10),
                ToggleIconButton14(
                  icons: const [
                    Icon(Icons.favorite),
                    Icon(Icons.local_fire_department_sharp),
                    Icon(Icons.notifications),
                  ],
                  selected: (int value) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
