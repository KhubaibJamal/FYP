import 'dart:ui';
import 'package:flutter/material.dart';

class BottomSheet2 extends StatelessWidget {
  const BottomSheet2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BackdropFilter(
      blendMode: BlendMode.srcIn,
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 0),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 10),
        height: 200,
        clipBehavior: Clip.antiAlias,
        decoration: const ShapeDecoration(
          color: Color(0xFF0267CD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
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
                color: Colors.white,
              ),
            ),
            SizedBox(height: height * 0.01),
            const Text(
              "If you can provide answers to small list of questions about the test, it can help us.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: width * 0.4,
                  child: const CustomFilledButton(
                    color: Color(0xFF125496),
                    title: "Skip this time",
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: width * 0.4,
                  child: const CustomFilledButton(
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

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double? width;
  final Color? color;
  final Color? textColor;

  const CustomFilledButton({
    super.key,
    required this.title,
    this.color,
    this.width,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      color: color ?? const Color(0xFF0267CD),
      height: 50,
      minWidth: width ?? MediaQuery.of(context).size.width,
      onPressed: () {},
      padding: const EdgeInsets.all(0),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: textColor ?? Colors.white,
              ),
        ),
      ),
    );
  }
}
