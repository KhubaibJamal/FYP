import 'package:flutter/material.dart';
import 'package:fyp/text%20fields/input_text_field1.dart';
import 'package:fyp/text%20fields/input_text_field10.dart';
import 'package:fyp/text%20fields/input_text_field11.dart';
import 'package:fyp/text%20fields/input_text_field12.dart';
import 'package:fyp/text%20fields/input_text_field13.dart';
import 'package:fyp/text%20fields/input_text_field14.dart';
import 'package:fyp/text%20fields/input_text_field2.dart';
import 'package:fyp/text%20fields/input_text_field3.dart';
import 'package:fyp/text%20fields/input_text_field4.dart';
import 'package:fyp/text%20fields/input_text_field5.dart';
import 'package:fyp/text%20fields/input_text_field7.dart';
import 'package:fyp/text%20fields/input_text_field6.dart';
import 'package:fyp/text%20fields/input_text_field8.dart';
import 'package:fyp/text%20fields/input_text_field9.dart';

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
              const SizedBox(height: 10),
              GradientInputField7(
                textController: controller,
                hintText: "UserName",
              ),
              const SizedBox(height: 10),
              InputTextField8(
                textController: controller,
                hintText: "Password",
              ),
              const SizedBox(height: 10),
              InputTextField9(
                controller: controller,
                hintText: "username",
              ),
              const SizedBox(height: 10),
              InputTextField10(
                inputController: controller,
                hintText: "Khubaib",
                labelText: "Username",
              ),
              const SizedBox(height: 10),
              InputTextField11(
                controller: controller,
                hintText: "Enter name here",
              ),
              const SizedBox(height: 10),
              InputTextField12(
                controller: controller,
                hintText: "khubaib@ssuet.edu.pk",
              ),
              const SizedBox(height: 10),
              InputTextField13(
                controller: controller,
                hintText: "Enter you name here.",
              ),
              const SizedBox(height: 10),
              const InputTextField14()
            ],
          ),
        ),
      ),
    );
  }
}
