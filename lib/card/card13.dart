import 'package:flutter/material.dart';

class Card13 extends StatefulWidget {
  final double bevel;
  final Offset blurOffset;
  final Color color;
  Card13({
    super.key,
    this.bevel = 10.0,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200;

  @override
  State<Card13> createState() => _Card13State();
}

class _Card13State extends State<Card13> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            isPress ? widget.color : widget.color.mix(Colors.black, 0.1),
            isPress ? widget.color.mix(Colors.black, 0.5) : widget.color,
            isPress ? widget.color.mix(Colors.black, 0.5) : widget.color,
            widget.color.mix(Colors.white, isPress ? 0.2 : 0.5),
          ],
          stops: const [0.0, 0.3, 0.6, 1.6],
        ),
        boxShadow: isPress
            ? null
            : [
                BoxShadow(
                  blurRadius: widget.bevel,
                  offset: -widget.blurOffset,
                  color: widget.color.mix(Colors.white, 0.6),
                ),
                BoxShadow(
                  blurRadius: widget.bevel,
                  offset: widget.blurOffset,
                  color: widget.color.mix(Colors.black, 0.3),
                ),
              ],
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: Text(
                'Visa',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'John Smith',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/mastercard.png?alt=media&token=1ae51e14-5a60-4dbf-8a42-47cb9c3c1dfe",
                    width: 50,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '1234  5678  1234  3799',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Expiry",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      Text(
                        "11/22",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}
