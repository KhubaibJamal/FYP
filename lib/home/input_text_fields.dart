import 'package:flutter/material.dart';
import 'package:fyp/text%20fields/input_text_field1.dart';

class InputTextFields extends StatelessWidget {
  InputTextFields({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InputTextField1(inputController: controller),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
