import 'package:flutter/material.dart';
import 'package:fyp/social%20buttons/social_button1.dart';

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
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}