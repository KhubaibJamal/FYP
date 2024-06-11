import 'package:flutter/material.dart';

class Slider3 extends StatefulWidget {
  final double min;
  final double max;
  final double initialValue;
  final Color primaryColor;
  final Color accentColor;
  final Color divisionColor;
  final int divisions;
  final Function(double) onChange;
  const Slider3(
      {required this.min,
      required this.max,
      required this.divisions,
      required this.onChange,
      this.divisionColor = const Color(0xFF948979),
      this.initialValue = 0.0,
      this.primaryColor = const Color(0xFF153448),
      this.accentColor = Colors.white,
      Key? key})
      : super(key: key);

  @override
  _Slider3State createState() => _Slider3State();
}

class _Slider3State extends State<Slider3> {
  late double _currentSliderValue;
  @override
  void initState() {
    super.initState();
    _currentSliderValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: widget.primaryColor,
        inactiveTrackColor: widget.primaryColor.withAlpha(35),
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 6.0,
        thumbShape: CustomSliderThumbCircle(
          thumbRadius: 20,
          min: widget.min,
          max: widget.max,
        ),
        thumbColor: widget.primaryColor,
        overlayColor: widget.primaryColor.withAlpha(35),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        activeTickMarkColor: widget.accentColor,
        inactiveTickMarkColor: widget.divisionColor,
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: widget.primaryColor.withAlpha(35),
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      child: Slider(
        min: widget.min,
        max: widget.max,
        value: _currentSliderValue,
        divisions: widget.divisions,
        onChanged: (value) {
          setState(() {
            _currentSliderValue = value;
          });
          widget.onChange(value);
        },
      ),
    );
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final double min;
  final double max;

  const CustomSliderThumbCircle({
    required this.thumbRadius,
    this.min = 0.0,
    this.max = 100.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    TextSpan span = TextSpan(
      style: TextStyle(
        fontSize: thumbRadius * .8,
        fontWeight: FontWeight.w700,
        color: sliderTheme.thumbColor,
      ),
      text: getValue(value),
    );

    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter = Offset(
      center.dx - (tp.width / 2),
      center.dy - (tp.height / 2),
    );

    canvas.drawCircle(center, thumbRadius * .9, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
