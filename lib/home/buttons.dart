import 'package:flutter/material.dart';
import 'package:fyp/buttons/button10.dart';
import 'package:fyp/buttons/button9.dart';
import 'package:fyp/buttons/button1.dart';
import 'package:fyp/buttons/button3.dart';
import 'package:fyp/buttons/button5.dart';
import 'package:fyp/buttons/button6.dart';
import 'package:fyp/buttons/button12.dart';
import 'package:fyp/buttons/button8.dart';
import 'package:fyp/buttons/button11.dart';
import 'package:fyp/buttons/button2.dart';
import 'package:fyp/buttons/button4.dart';
import 'package:fyp/buttons/button13.dart';
import 'package:fyp/buttons/button7.dart';
import 'package:fyp/buttons/button14.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
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
                height: 50, width: 200, onPress: () {}, btnText: "Hello World"),
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
    );
  }
}
