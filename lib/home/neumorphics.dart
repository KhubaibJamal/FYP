import 'package:flutter/material.dart';
import 'package:fyp/neumorphic/neumorphic1.dart';
import 'package:fyp/neumorphic/neumorphic10.dart';
import 'package:fyp/neumorphic/neumorphic11.dart';
import 'package:fyp/neumorphic/neumorphic13.dart';
import 'package:fyp/neumorphic/neumorphic14.dart';
import 'package:fyp/neumorphic/neumorphic2.dart';
import 'package:fyp/neumorphic/neumorphic3.dart';
import 'package:fyp/neumorphic/neumorphic4.dart';
import 'package:fyp/neumorphic/neumorphic5.dart';
import 'package:fyp/neumorphic/neumorphic6.dart';
import 'package:fyp/neumorphic/neumorphic7.dart';
import 'package:fyp/neumorphic/neumorphic8.dart';
import 'package:fyp/neumorphic/neumorphic9.dart';
import 'package:fyp/neumorphic/neumorphic12.dart';

class Neumorphics extends StatelessWidget {
  Neumorphics({super.key});

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Neumorphic13(),
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
                Neumorphic8(
                  title: "List Tile",
                  description: 'This is tile\'s description',
                ),
                const SizedBox(height: 10),
                Neumorphic9(onPressed: () {}),
                const SizedBox(height: 10),
                Neumorphic10(
                  min: 0.0,
                  max: 100.0,
                  initialValue: 45.0,
                  onChange: (value) {},
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const Neumorphic11();
                        });
                    return;
                  },
                  child: const Text("Bottom Sheet"),
                ),
                const SizedBox(height: 10),
                Neumorphic12(),
                const SizedBox(height: 10),
                Neumorphic14(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
