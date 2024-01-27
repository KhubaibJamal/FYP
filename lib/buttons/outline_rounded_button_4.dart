import 'package:flutter/material.dart';

class OutlineRoundedButton4 extends StatelessWidget {
  const OutlineRoundedButton4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(color: Color(0xff2749FD), width: 1.4),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sign Out",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
                color: Color(0xff2749FD),
              ),
            ),
            Icon(Icons.arrow_forward, color: Color(0xff2749FD))
          ],
        ),
      ),
    );
  }
}
