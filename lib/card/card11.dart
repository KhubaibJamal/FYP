import 'package:flutter/material.dart';

class Card11 extends StatelessWidget {
  const Card11({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            color: const Color(0xFF103971),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    "Today Event \nLive",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 0.5,
                  height: 0,
                ),
                Row(
                  children: [
                    const SizedBox(width: 15),
                    const Text(
                      "March 19, 2023",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.event, color: Colors.white),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 4),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          flex: 1,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            color: const Color(0xFF103971),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 15),
                    const Text(
                      "Call",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.call, color: Colors.white),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 4),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    "John Smith \nTek",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
