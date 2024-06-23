import 'package:flutter/material.dart';

enum IconLabel {
  smile('Smile', Icons.sentiment_satisfied_outlined),
  cloud(
    'Cloud',
    Icons.cloud_outlined,
  ),
  brush('Brush', Icons.brush_outlined),
  heart('Heart', Icons.favorite);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;
}

class Dropdown1 extends StatefulWidget {
  const Dropdown1({super.key});

  @override
  State<Dropdown1> createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  final TextEditingController iconController = TextEditingController();
  IconLabel? selectedIcon;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<IconLabel>(
      value: selectedIcon,
      decoration: const InputDecoration(
        labelText: 'Icon',
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      ),
      items: [
        const DropdownMenuItem<IconLabel>(
          value: null,
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 8),
              Text('Search'),
            ],
          ),
        ),
        ...IconLabel.values.map((IconLabel icon) {
          return DropdownMenuItem<IconLabel>(
            value: icon,
            child: Row(
              children: [
                Icon(icon.icon),
                const SizedBox(width: 8),
                Text(icon.label),
              ],
            ),
          );
        }).toList(),
      ],
      onChanged: (IconLabel? newValue) {
        setState(() {
          selectedIcon = newValue;
        });
      },
    );
  }
}
