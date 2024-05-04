import 'package:flutter/material.dart';
import 'package:fyp/templates/auth_template/Widgets/button_widget.dart';
import 'package:fyp/templates/auth_template/Widgets/social_button_widget.dart';
import 'package:fyp/templates/auth_template/Widgets/textField_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF262b31),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              height: 50,
              color: Colors.transparent,
            ),
            Center(
              child: SizedBox(
                height: height / 3.5,
                child: Image.asset("assets/image.png"),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 21.0),
              height: height / 1.67,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign-up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFBFCFF),
                    ),
                  ),
                  const Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffdddee3),
                    ),
                  ),
                  InputTxtField(
                    hintText: "Your Name",
                    controller: nameController,
                    obscureText: false,
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffdddee3),
                    ),
                  ),
                  InputTxtField(
                    hintText: "Your Email id",
                    controller: emailController,
                    obscureText: false,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffdddee3),
                    ),
                  ),
                  InputTxtField(
                    hintText: "Password",
                    controller: passwordController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 60,
                    width: width,
                    child: ButtonWidget(
                      btnText: "Signup",
                      onPress: () {},
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 2.0,
                          width: 70.0,
                          color: const Color(0xff999a9e),
                        ),
                      ),
                      const Text(
                        "Or signup with",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff999a9e),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 2.0,
                          width: 70.0,
                          color: const Color(0xff999a9e),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: SocialButtonWidget(
                      bgColor: Colors.white,
                      imagePath: 'assets/Gmail.png',
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
