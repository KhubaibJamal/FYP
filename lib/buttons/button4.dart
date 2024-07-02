import 'package:flutter/material.dart';

class OutlineRoundedButton4 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  final IconData btnIcon;
  final double height;
  final double width;
  const OutlineRoundedButton4(
      {super.key,
      required this.btnText,
      required this.onPress,
      required this.btnIcon,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPress,
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(color: Color(0xff2749FD), width: 1.4),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              btnText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
                color: Color(0xff2749FD),
              ),
            ),
            Icon(btnIcon, color: const Color(0xff2749FD))
          ],
        ),
      ),
    );
  }
}
