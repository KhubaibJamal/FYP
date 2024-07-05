import 'package:flutter/material.dart';
import 'package:fyp/neumorphic/neumorphic1.dart';
import 'package:fyp/neumorphic/neumorphic2.dart';
import 'package:fyp/neumorphic/neumorphic3.dart';
import 'package:fyp/neumorphic/neumorphic4.dart';
import 'package:fyp/neumorphic/neumorphic5.dart';
import 'package:fyp/neumorphic/neumorphic6.dart';
import 'package:fyp/neumorphic/neumorphic7.dart';

class Neumorphics extends StatelessWidget {
  Neumorphics({super.key});

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Neumorphic1(
                  onPress: () {},
                  height: 100,
                  width: 100,
                  btnText: "Hello",
                ),
                const SizedBox(height: 10),
                const Neumorphic2(),
                const SizedBox(height: 10),
                Neumorphic3(
                  controller: controller,
                  hintText: "search here",
                ),
                const SizedBox(height: 10),
                Neumorphic4(
                  controller: controller,
                  hintText: "search..",
                ),
                const SizedBox(height: 10),
                Neumorphic5(
                  text: "Explore",
                  imageUrl:
                      'https://media.designrush.com/articles/101246/conversions/app-development-process-details.jpg',
                  subtitle: '30+ clients',
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                Neumorphic6(),
                const SizedBox(height: 10),
                const Neumorphic7(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
