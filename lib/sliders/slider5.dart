import 'package:flutter/material.dart';

class Slider5 extends StatefulWidget {
  final double min;
  final double max;
  final double initialValue;
  final Function(double) onChange;
  const Slider5({
    Key? key,
    required this.min,
    required this.max,
    required this.initialValue,
    required this.onChange,
  }) : super(key: key);
  @override
  _Slider5State createState() => _Slider5State();
}

class _Slider5State extends State<Slider5> {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.grey,
        inactiveTrackColor: const Color(0xFFDC5F00),
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 8,
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.transparent,
        thumbShape: RoundSliderThumbShape(
          activeThumbWidth: 50,
          inactiveThumbWidth: 40,
          fillColor: const Color(0xFF373A40),
          thumbText: widget.initialValue.toString(),
          elevation: 10,
          thumbTextStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFFEEEEEE),
          ),
        ),
        overlayColor: Colors.transparent,
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
      ),
      child: Slider(
        value: widget.initialValue,
        min: widget.min,
        divisions: 25,
        max: widget.max,
        onChanged: (value) {
          widget.onChange(value);
        },
      ),
    );
  }
}

class RoundedRectSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  const RoundedRectSliderTrackShape();

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 0,
  }) {
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    const innerPadding = 5;
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);
    final Paint activePaint = Paint()
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    final Paint leftTrackPaint;
    final Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    final Radius trackRadius = Radius.circular(trackRect.height / 2);
    final Radius activeTrackRadius =
        Radius.circular((trackRect.height + additionalActiveTrackHeight) / 2);

    final leftRadius =
        (textDirection == TextDirection.ltr) ? activeTrackRadius : trackRadius;
    final rightRadius =
        (textDirection == TextDirection.rtl) ? activeTrackRadius : trackRadius;
    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        trackRect.left - innerPadding,
        (textDirection == TextDirection.ltr)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        thumbCenter.dx,
        (textDirection == TextDirection.ltr)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
        bottomLeft: leftRadius,
      ),
      leftTrackPaint,
    );
    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        thumbCenter.dx,
        (textDirection == TextDirection.rtl)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        trackRect.right + innerPadding,
        (textDirection == TextDirection.rtl)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topRight: rightRadius,
        bottomRight: rightRadius,
      ),
      rightTrackPaint,
    );
  }
}

class RoundSliderThumbShape extends SliderComponentShape {
  const RoundSliderThumbShape(
      {this.fillColor = Colors.red,
      this.strokeColor,
      this.strokeWidth = 2,
      this.elevation = 0,
      this.shadowColor = const Color(0xFF000000),
      this.activeThumbWidth = 30,
      this.inactiveThumbWidth = 20,
      this.thumbText = '',
      this.thumbTextStyle = const TextStyle(
        color: Color(0xFFAE3DDF),
        fontSize: 14,
      )});

  final double activeThumbWidth;

  final double inactiveThumbWidth;

  final Color? fillColor;

  final Color? strokeColor;

  final double strokeWidth;

  final Color shadowColor;
  final double elevation;

  final String thumbText;
  final thumbTextStyle;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.fromRadius(10);
  }

  double translatePoint(double size, double constant, double translationValue) {
    return size * constant + translationValue;
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

    final Tween<double> radiusTween = Tween<double>(
      begin: inactiveThumbWidth,
      end: activeThumbWidth,
    );

    Size size = Size(radiusTween.evaluate(activationAnimation),
        (radiusTween.evaluate(activationAnimation)).toDouble());

    double posNeg = 1;
    double XTranslate = center.dx * posNeg - size.width / 2;
    double YTranslate = center.dy * posNeg +
        2 +
        (sliderTheme.trackHeight != null ? sliderTheme.trackHeight! / 2 : 0);

    Path path_0 = Path();
    path_0.moveTo(XTranslate + size.width * 0.6824492,
        YTranslate + size.height * 0.2545195);
    path_0.cubicTo(
        XTranslate + size.width * 0.6036973,
        YTranslate + size.height * 0.1315527,
        XTranslate + size.width * 0.5238008,
        YTranslate + size.height * 0.03013477,
        XTranslate + size.width * 0.5230039,
        YTranslate + size.height * 0.02912305);
    path_0.lineTo(XTranslate + size.width * 0.4999980, YTranslate);
    path_0.lineTo(XTranslate + size.width * 0.4769941,
        YTranslate + size.height * 0.02912500);
    path_0.cubicTo(
        XTranslate + size.width * 0.4761973,
        YTranslate + size.height * 0.03013477,
        XTranslate + size.width * 0.3963008,
        YTranslate + size.height * 0.1315527,
        XTranslate + size.width * 0.3175488,
        YTranslate + size.height * 0.2545215);
    path_0.cubicTo(
        XTranslate + size.width * 0.2097910,
        YTranslate + size.height * 0.4227734,
        XTranslate + size.width * 0.1551562,
        YTranslate + size.height * 0.5501699,
        XTranslate + size.width * 0.1551562,
        YTranslate + size.height * 0.6331719);
    path_0.cubicTo(
        XTranslate + size.width * 0.1551562,
        YTranslate + size.height * 0.8354414,
        XTranslate + size.width * 0.3098516,
        YTranslate + size.height,
        XTranslate + size.width * 0.5000000,
        YTranslate + size.height);
    path_0.cubicTo(
        XTranslate + size.width * 0.6901484,
        YTranslate + size.height,
        XTranslate + size.width * 0.8448438,
        YTranslate + size.height * 0.8354414,
        XTranslate + size.width * 0.8448438,
        YTranslate + size.height * 0.6331719);
    path_0.cubicTo(
        XTranslate + size.width * 0.8448418,
        YTranslate + size.height * 0.5501699,
        XTranslate + size.width * 0.7902070,
        YTranslate + size.height * 0.4227734,
        XTranslate + size.width * 0.6824492,
        YTranslate + size.height * 0.2545195);
    path_0.close();

    if (fillColor != null) {
      Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
      paint_0_fill.color = fillColor!.withOpacity(1.0);
      canvas.drawPath(path_0, paint_0_fill);
    }
    if (strokeColor != null) {
      Paint paint_0_stroke = Paint()..style = PaintingStyle.stroke;
      paint_0_stroke.color = strokeColor!.withOpacity(1.0);
      paint_0_stroke.strokeWidth = strokeWidth;
      canvas.drawPath(path_0, paint_0_stroke);
    }

    canvas.drawShadow(path_0, shadowColor, elevation, true);
    final textSpan = TextSpan(
      text: thumbText,
      style: thumbTextStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textScaler: TextScaler.linear(size.width / 50),
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final offset = Offset(
      center.dx - textPainter.width / 2,
      center.dy + size.width / 1.8,
    );
    textPainter.paint(canvas, offset);
  }
}
