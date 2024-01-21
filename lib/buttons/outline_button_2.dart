import 'package:flutter/material.dart';

class OutlineButton2 extends StatelessWidget {
  const OutlineButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
      onPressed: () {},
      child: const Text(
        "Hello",
        style: TextStyle(
          color: Color(0xff4338CA),
          fontSize: 16,
        ),
      ),
    );
  }
}
