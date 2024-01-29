import 'package:flutter/material.dart';

class OutlineButton2 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  const OutlineButton2(
      {super.key, required this.btnText, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        alignment: Alignment.center,
        side: MaterialStateProperty.all(
          const BorderSide(width: 1, color: Color(0xff4338CA)),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.only(right: 75, left: 75, top: 12.5, bottom: 12.5),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      child: Text(
        btnText,
        style: const TextStyle(
          color: Color(0xff4338CA),
          fontSize: 16,
        ),
      ),
    );
  }
}
