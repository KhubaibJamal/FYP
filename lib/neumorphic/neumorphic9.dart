import 'package:flutter/material.dart';

class Neumorphic9 extends StatelessWidget {
  final Function() onPressed;
  const Neumorphic9({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double bevel = 10.0;
    final Color color = Colors.grey.shade200;
    const Offset blurOffset = Offset(bevel / 2, bevel / 2);

    return Container(
      height: 54,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color.mix(Colors.black, 0.1),
            color,
            color,
            color.mix(Colors.white, 0.5),
          ],
          stops: const [0.0, 0.3, 0.6, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: bevel,
            offset: -blurOffset,
            color: color.mix(Colors.white, 0.6),
          ),
          BoxShadow(
            blurRadius: bevel,
            offset: blurOffset,
            color: color.mix(Colors.black, 0.3),
          ),
        ],
      ),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/socials%2Fgithub.png?alt=media&token=c8a341e8-2f34-490c-a924-627b84fa3c43",
              width: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "GitHub",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}
