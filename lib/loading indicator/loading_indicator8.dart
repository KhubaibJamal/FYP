import 'package:flutter/material.dart';
import 'dart:math' as math;

class LoadingIndicator8 extends StatelessWidget {
  final double percentage;
  const LoadingIndicator8({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: CustomPaint(
        size: const Size(100, 100),
        painter: CircularProgressPainter(percentage),
        child: Center(
          child: Text(
            '${percentage.toInt()}%',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final double percentage;
  CircularProgressPainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundCircle = Paint()
      ..color = Colors.grey.shade200
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    Paint foregroundCircle = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;

    canvas.drawCircle(center, radius, backgroundCircle);

    double angle = 2 * math.pi * (percentage / 100);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2,
      angle,
      false,
      foregroundCircle,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
