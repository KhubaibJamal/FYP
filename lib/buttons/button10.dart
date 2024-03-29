import 'package:flutter/material.dart';

class AlertButton10 extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  final double height;
  final double width;

  const AlertButton10(
      {Key? key,
      required this.btnText,
      required this.onPress,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Ink(
          width: width,
          height: height,
          decoration: const ShapeDecoration(
            color: Colors.green,
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            splashRadius: 48.0 / 2,
            iconSize: 48.0 / 2,
            icon: const Icon(Icons.message, color: Colors.white),
            splashColor: Colors.blue.withOpacity(.4),
            onPressed: onPress,
          ),
        ),
        Positioned(
          top: 48.0 / -14,
          right: 48.0 / -14,
          child: Container(
            width: 48.0 / 2.2,
            height: 48.0 / 2.2,
            decoration: const ShapeDecoration(
              color: Colors.red,
              shape: CircleBorder(),
            ),
            child: Center(
              child: Text(
                btnText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48.0 / 4,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
