import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  const Animation2({Key? key}) : super(key: key);

  @override
  State<Animation2> createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: const Text(
            'Switch',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        AnimatedCrossFade(
          firstChild: Image.asset(
            'assets/images/wash_hands.png',
            width: double.infinity,
          ),
          secondChild: Image.asset(
            'assets/images/wear_mask.png',
            width: double.infinity,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 3),
        ),
      ],
    );
  }
}
