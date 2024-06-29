import 'package:flutter/material.dart';

class ExpansionTile3 extends StatefulWidget {
  final String title;

  const ExpansionTile3({super.key, required this.title});

  @override
  _ExpansionTile3State createState() => _ExpansionTile3State();
}

class _ExpansionTile3State extends State<ExpansionTile3> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.grey,
      leading: const Icon(
        Icons.add,
        size: 30,
      ),
      collapsedTextColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 255, 254, 169),
      title: Text(widget.title),
      children: [
        const Text(
          'description',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgCkN7PS2ctbBt5j_R-A2eDuYdkmkO0M7avhgolvEn0jDHm_-OLVwS-KcvEkwUsWhOVAA&usqp=CAU",
              ),
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
      onExpansionChanged: (value) {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
    );
  }
}
