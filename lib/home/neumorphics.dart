import 'package:flutter/material.dart';
import 'package:fyp/neumorphic/neumorphic1.dart';
import 'package:fyp/neumorphic/neumorphic2.dart';
import 'package:fyp/neumorphic/neumorphic3.dart';

class Neumorphics extends StatelessWidget {
  Neumorphics({super.key});

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
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
              Neumorphic2(),
              const SizedBox(height: 10),
              Neumorphic3(
                controller: controller,
                hintText: "search here",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
