import 'package:flutter/material.dart';

class LoadingIndicator4 extends StatelessWidget {
  const LoadingIndicator4({
    Key? key,
    required this.currentPage,
    required this.numPages,
    this.dotHeight = 10,
    this.activeDotHeight = 10,
    this.dotWidth = 10,
    this.activeDotWidth = 20,
    this.gradient = const LinearGradient(colors: [
      Color(0xff3C5B6F),
      Color(0xff153448),
    ]),
    this.activeGradient = const LinearGradient(
      colors: [
        Color(0xff153448),
        Color(0xff373A40),
      ],
    ),
  }) : super(key: key);

  final int currentPage;
  final int numPages;

  final double dotWidth;
  final double activeDotWidth;
  final double activeDotHeight;
  final double dotHeight;
  final Gradient gradient;
  final Gradient activeGradient;

  double _calcRowSize() {
    const int widthFactor = 2;
    return (dotWidth * numPages * widthFactor) + activeDotWidth - dotWidth;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _calcRowSize(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          numPages,
          (index) => AnimatedPageIndicatorDot(
            isActive: currentPage == index,
            gradient: gradient,
            activeGradient: activeGradient,
            activeWidth: activeDotWidth,
            activeHeight: activeDotHeight,
          ),
        ),
      ),
    );
  }
}

class AnimatedPageIndicatorDot extends StatelessWidget {
  const AnimatedPageIndicatorDot(
      {Key? key,
      required this.isActive,
      this.height = 10,
      this.width = 10,
      this.activeWidth = 20,
      this.activeHeight = 10,
      required this.gradient,
      required this.activeGradient})
      : super(key: key);

  final bool isActive;
  final double height;
  final double width;
  final double activeWidth;
  final double activeHeight;
  final Gradient gradient;
  final Gradient activeGradient;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? activeWidth : width,
      height: isActive ? activeHeight : height,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        gradient: isActive ? activeGradient : gradient,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
    );
  }
}
