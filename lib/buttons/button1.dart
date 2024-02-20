import 'package:flutter/material.dart';

class GradientButton1 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  const GradientButton1(
      {Key? key, required this.btnText, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Color(0xff4338CA),
            Color(0xff6D28D9),
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
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
          ),
        ),
        child: Text(
          btnText,
          style: const TextStyle(
            color: Color(0xffffffff),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
