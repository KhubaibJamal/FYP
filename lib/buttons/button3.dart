import 'package:flutter/material.dart';

class GradientRoundedButton3 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  const GradientRoundedButton3(
      {super.key, required this.btnText, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [
            Color(0xff53E88B),
            Color(0xff15BE77),
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            alignment: Alignment.center,
            padding: MaterialStateProperty.all(
              const EdgeInsets.only(
                right: 75,
                left: 75,
                top: 15,
                bottom: 15,
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            )),
        child: Text(
          btnText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
