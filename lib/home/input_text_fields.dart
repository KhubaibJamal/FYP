import 'package:flutter/material.dart';
import 'package:fyp/text%20fields/input_text_field1.dart';
import 'package:fyp/text%20fields/input_text_field2.dart';
import 'package:fyp/text%20fields/input_text_field3.dart';
import 'package:fyp/text%20fields/input_text_field4.dart';
import 'package:fyp/text%20fields/input_text_field5.dart';
import 'package:fyp/text%20fields/intput_tex_field6.dart';

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
              CustomTextField2(
                readOnly: false,
                controller: controller,
                hintText: "Email",
                enabled: true,
              ),
              const SizedBox(height: 10),
              PrefixIconInputTextField3(inputController: controller),
              const SizedBox(height: 10),
              PasswordTextField4(
                textEditingController: controller,
                hintText: "Enter your password here",
              ),
              const SizedBox(height: 10),
              UnderLineInputTextField5(
                inputController: controller,
                hintText: "Enter your Name here",
                labelText: "Name",
              ),
              const SizedBox(height: 10),
              PrefixIconInputTextField6(
                inputController: controller,
                hintText: "Username",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
