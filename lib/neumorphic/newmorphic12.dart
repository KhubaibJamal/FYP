import 'package:flutter/material.dart';

class Neumorphic12 extends StatefulWidget {
  Neumorphic12({
    Key? key,
    this.bevel = 10.0,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200;

  final double bevel;
  final Offset blurOffset;
  final Color color;
  @override
  _Neumorphic12State createState() => _Neumorphic12State();
}

class _Neumorphic12State extends State<Neumorphic12> {
  String? _selectedFruit;

  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.bevel),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            isPress ? color : color.mix(Colors.black, 0.1),
            isPress ? color.mix(Colors.black, 0.5) : color,
            isPress ? color.mix(Colors.black, 0.5) : color,
            color.mix(Colors.white, isPress ? 0.2 : 0.5),
          ],
          stops: const [0.0, 0.3, 0.6, 1.6],
        ),
        boxShadow: isPress
            ? null
            : [
                BoxShadow(
                  blurRadius: widget.bevel,
                  offset: -widget.blurOffset,
                  color: color.mix(Colors.white, 0.6),
                ),
                BoxShadow(
                  blurRadius: widget.bevel,
                  offset: widget.blurOffset,
                  color: color.mix(Colors.black, 0.3),
                ),
              ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: const Color(0xFFE7F0DC),
          hint: const Text(
            'Select your favorite fruit',
            style: TextStyle(color: Colors.grey),
          ),
          value: _selectedFruit,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
          ),
          iconSize: 24,
          isExpanded: true,
          style: const TextStyle(
            color: Colors.black,
          ),
          onChanged: (String? newValue) {
            setState(() {
              _selectedFruit = newValue;
            });
          },
          items: <String>['Apple', 'Banana', 'Cherry', 'Date']
              .map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFE7F0DC),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            },
          ).toList(),
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
