import 'package:flutter/material.dart';
import 'package:fyp/templates/auth_template/Widgets/button_widget.dart';
import 'package:fyp/templates/auth_template/Widgets/textField_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();

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
              height: height / 2.5,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Forgot password",
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
                  SizedBox(
                    height: 55,
                    width: width,
                    child: ButtonWidget(
                      btnText: "Submit",
                      onPress: () {},
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Back to login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff999a9e),
                        ),
                      ),
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
