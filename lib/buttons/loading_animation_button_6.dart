import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vector_math/vector_math_64.dart' as vector;

class LoadingAnimatedButton6 extends StatefulWidget {
  final String btnText;
  final VoidCallback onPress;
  final double height;
  final double width;
  const LoadingAnimatedButton6(
      {super.key,
      required this.btnText,
      required this.onPress,
      required this.height,
      required this.width});

  @override
  State<LoadingAnimatedButton6> createState() => _LoadingAnimatedButton6State();
}

class _LoadingAnimatedButton6State extends State<LoadingAnimatedButton6>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.indigo,
      child: CustomPaint(
        painter: LoadingPainter(
          animation: _animationController,
          borderColor: Colors.white,
          borderRadius: 15,
          borderWidth: 3.0,
          color: Colors.indigo,
        ),
        child: Container(
          width: widget.width,
          height: widget.height,
          alignment: Alignment.center,
          child: Center(
            child: Text(widget.btnText),
          ),
        ),
      ),
    );
  }
}

class LoadingPainter extends CustomPainter {
  final Animation animation;
  final Color color;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;

  LoadingPainter(
      {required this.animation,
      this.color = Colors.orange,
      this.borderColor = Colors.white,
      this.borderRadius = 15.0,
      this.borderWidth = 3.0})
      : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final paint = Paint()
      ..shader = SweepGradient(
              colors: [
                color.withOpacity(.25),
                color,
              ],
              startAngle: 0.0,
              endAngle: vector.radians(180),
              stops: const [.75, 1.0],
              transform:
                  GradientRotation(vector.radians(360.0 * animation.value)))
          .createShader(rect);

    final path = Path.combine(
        PathOperation.xor,
        Path()
          ..addRRect(
              RRect.fromRectAndRadius(rect, Radius.circular(borderRadius))),
        Path()
          ..addRRect(RRect.fromRectAndRadius(
              rect.deflate(3.5), Radius.circular(borderRadius))));
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            rect.deflate(1.5), Radius.circular(borderRadius)),
        Paint()
          ..color = borderColor
          ..strokeWidth = borderWidth
          ..style = PaintingStyle.stroke);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
