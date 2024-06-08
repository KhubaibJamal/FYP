import 'package:flutter/material.dart';
import 'package:fyp/social%20buttons/social_button1.dart';
import 'package:fyp/social%20buttons/social_button2.dart';
import 'package:fyp/social%20buttons/social_button3.dart';
import 'package:fyp/social%20buttons/social_button4.dart';
import 'package:fyp/social%20buttons/social_button5.dart';
import 'package:fyp/social%20buttons/social_button6.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SocialButton1(onPressed: () {}),
            SocialButton2(onPressed: () {}),
            SocialButton3(onPressed: () {}),
            SocialButton4(onPressed: () {}),
            SocialButton5(onPressed: () {}),
            SocialButton6(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
