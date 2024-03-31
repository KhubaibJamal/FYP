import 'package:flutter/material.dart';

class ListTile8 extends StatefulWidget {
  final String title;
  final String description;
  final double bevel;
  final Offset blurOffset;
  final Color color;
  ListTile8({
    super.key,
    this.bevel = 10.0,
    required this.title,
    required this.description,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200;

  @override
  State<ListTile8> createState() => _ListTile8State();
}

class _ListTile8State extends State<ListTile8> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    return Listener(
      child: AnimatedContainer(
        height: 120,
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.bevel * 2),
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
        child: Center(
          child: ListTile(
            leading: SizedBox(
              width: 50,
              height: 80,
              child: Image.network(
                'https://media.istockphoto.com/id/610842118/photo/when-my-hair-looks-good-i-feel-good.jpg?s=612x612&w=0&k=20&c=PJ3LXzLptLQWT54xJdj9yhayRqLhS9FWHg6md_S7tUU=',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            subtitle: Text(
              widget.description,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
            ),
            trailing: const Icon(
              Icons.card_giftcard,
              color: Colors.grey,
            ),
          ),
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
