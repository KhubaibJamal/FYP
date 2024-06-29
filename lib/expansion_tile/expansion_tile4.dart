
import 'package:flutter/material.dart';

class ExpansionTile4 extends StatefulWidget {
  const ExpansionTile4({super.key});

  @override
  _ExpansionTile4State createState() => _ExpansionTile4State();
}

class _ExpansionTile4State extends State<ExpansionTile4> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isExpanded ? const EdgeInsets.all(8.0) : const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isExpanded ? const BorderRadius.all(Radius.circular(22)) : const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.pink),
        ),
        child: ExpansionTile(
          key: PageStorageKey<String>('January'),
          title: Container(
            width: double.infinity,
            child: Text(
              'January',
              style: TextStyle(fontSize: isExpanded ? 22 : 18),
            ),
          ),
          trailing: isExpanded
              ? const Icon(Icons.arrow_drop_down, size: 32, color: Colors.pink)
              : const Icon(Icons.arrow_drop_up, size: 32, color: Colors.pink),
          onExpansionChanged: (value) {
            setState(() {
              isExpanded = value;
            });
          },
          children: [
            for (final day in getWeeks())
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Action when a day is tapped
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: Colors.pinkAccent),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        day,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  List<String> getWeeks() {
    return [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday",
    ];
  }
}