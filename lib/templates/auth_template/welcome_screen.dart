import 'package:flutter/material.dart';
import 'package:fyp/templates/auth_template/Widgets/button_widget.dart';
import 'package:fyp/templates/auth_template/login_screen.dart';
import 'package:fyp/templates/auth_template/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF262b31),
      body: SizedBox(
        height: height / 1.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Divider(
              height: 100,
              color: Colors.transparent,
            ),
            Center(
              child: SizedBox(
                height: height / 2.5,
                child: Image.asset("assets/image.png"),
              ),
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFBFCFF),
              ),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ButtonWidget(
                  btnText: "login",
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ButtonWidget(
                  btnText: "signup",
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
