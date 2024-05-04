import 'package:flutter/material.dart';
import 'package:fyp/templates/auth_template/Widgets/button_widget.dart';
import 'package:fyp/templates/auth_template/Widgets/social_button_widget.dart';
import 'package:fyp/templates/auth_template/Widgets/textField_widget.dart';
import 'package:fyp/templates/auth_template/forgot_screen.dart';
import 'package:fyp/templates/auth_template/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

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
                    "Log-in",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFBFCFF),
                    ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>
                                  const ForgetPasswordScreen()),
                            ),
                          );
                        },
                        child: const Text(
                          "Forget password?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff999a9e),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                    width: width,
                    child: ButtonWidget(
                      btnText: "Login",
                      onPress: () {},
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff999a9e),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const SignUpScreen()),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign-Up ",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff999a9e),
                          ),
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
            ),
          ],
        ),
      ),
    );
  }
}
