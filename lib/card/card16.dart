import 'package:flutter/material.dart';

class Card16 extends StatefulWidget {
  const Card16({
    super.key,
  });

  @override
  State<Card16> createState() => _Card16State();
}

class _Card16State extends State<Card16> {
  Color _container1Color = const Color(0xFF6f4ad3);
  Color _container2Color = const Color(0xFF3d3b3c);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _container1Color = const Color(0xFF6f4ad3);
                _container2Color = const Color(0xFF3d3b3c);
              });
            },
            child: Container(
              width: 120,
              height: 150,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: _container1Color,
                borderRadius: BorderRadius.circular(12.5),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 20),
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.05),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.slideshow,
                    color: Colors.white,
                    size: 50,
                  ),
                  Spacer(),
                  Text(
                    'Movie',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                _container1Color = const Color(0xFF3d3b3c);
                _container2Color = const Color(0xFF6f4ad3);
              });
            },
            child: Container(
              width: 120,
              height: 150,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: _container2Color,
                borderRadius: BorderRadius.circular(12.5),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 20),
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.05),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 50,
                  ),
                  Spacer(),
                  Text(
                    "Video",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
