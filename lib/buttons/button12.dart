import 'package:flutter/material.dart';

class NeumorphicButton12 extends StatefulWidget {
  const NeumorphicButton12({super.key});

  @override
  _NeumorphicButton12State createState() => _NeumorphicButton12State();
}

class _NeumorphicButton12State extends State<NeumorphicButton12> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent event) {
        setState(() {
          _isPressed = true;
        });
      },
      onPointerUp: (PointerUpEvent event) {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0 * 10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _isPressed
                    ? Colors.blueGrey.shade200
                    : Colors.blueGrey.shade200.mix(Colors.black, .1)!,
                _isPressed
                    ? Colors.blueGrey.shade200.mix(Colors.black, .05)!
                    : Colors.blueGrey.shade200,
                _isPressed
                    ? Colors.blueGrey.shade200.mix(Colors.black, .05)!
                    : Colors.blueGrey.shade200,
                Colors.blueGrey.shade200
                    .mix(Colors.white, _isPressed ? .2 : .5)!,
              ],
              stops: const [
                0.0,
                .3,
                .6,
                1.0,
              ]),
          boxShadow: _isPressed
              ? null
              : [
                  BoxShadow(
                    blurRadius: 10.0,
                    offset: -const Offset(10 / 2, 10 / 2),
                    color: Colors.blueGrey.shade200.mix(Colors.white, .6)!,
                  ),
                  BoxShadow(
                    blurRadius: 10.0,
                    offset: const Offset(10 / 2, 10 / 2),
                    color: Colors.blueGrey.shade200.mix(Colors.black, .3)!,
                  )
                ],
        ),
        child: const Text('Hello'),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color? mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}
