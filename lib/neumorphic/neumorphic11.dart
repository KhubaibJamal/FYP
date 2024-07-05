import 'dart:ui';
import 'package:flutter/material.dart';

class Neumorphic11 extends StatelessWidget {
  const Neumorphic11({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    const double bevel = 10.0;
    final Color baseColor = Colors.grey.shade300;
    const Offset blurOffset = Offset(bevel / 2, bevel / 2);

    return BackdropFilter(
      blendMode: BlendMode.srcIn,
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 0),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 10),
        height: 200,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: bevel,
              offset: -blurOffset,
              color: Colors.white,
            ),
            BoxShadow(
              blurRadius: bevel,
              offset: blurOffset,
              color: Colors.black.withOpacity(0.2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: height * 0.03),
            const Text(
              "Submit More Info",
              style: TextStyle(
                fontSize: 22,
                fontFamily: "ZT Gatha",
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.01),
            const Text(
              "If you can provide answers to small list of questions about the test, it can help us.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: width * 0.4,
                  child: const NeumorphicButton(
                    color: Color(0xFF125496),
                    title: "Skip this time",
                    textColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: width * 0.4,
                  child: const NeumorphicButton(
                    color: Colors.white,
                    textColor: Color(0xFF232323),
                    title: "Review",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class NeumorphicButton extends StatelessWidget {
  final String title;
  final double? width;
  final Color? color;
  final Color? textColor;

  const NeumorphicButton({
    super.key,
    required this.title,
    this.color,
    this.width,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final double bevel = 10.0;
    final Color baseColor = color ?? Colors.grey.shade300;
    final Offset blurOffset = Offset(bevel / 2, bevel / 2);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: baseColor,
        boxShadow: [
          BoxShadow(
            blurRadius: bevel,
            offset: -blurOffset,
            color: Colors.white,
          ),
          BoxShadow(
            blurRadius: bevel,
            offset: blurOffset,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        minWidth: width ?? MediaQuery.of(context).size.width,
        onPressed: () {},
        padding: const EdgeInsets.all(0),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: textColor ?? Colors.black,
                ),
          ),
        ),
      ),
    );
  }
}
