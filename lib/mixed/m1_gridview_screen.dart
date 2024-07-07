import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(
          choices.length,
          (index) {
            return Center(
              child: SelectCard(choice: choices[index]),
            );
          },
        ),
      ),
    );
  }
}

class Choice {
  const Choice({
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Home', icon: Icons.home),
  Choice(title: 'Contact', icon: Icons.contacts),
  Choice(title: 'Map', icon: Icons.map),
  Choice(title: 'Phone', icon: Icons.phone),
  Choice(title: 'Camera', icon: Icons.camera_alt),
  Choice(title: 'Setting', icon: Icons.settings),
  Choice(title: 'Album', icon: Icons.photo_album),
  Choice(title: 'WiFi', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  const SelectCard({
    super.key,
    required this.choice,
  });
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.titleLarge;
    return Card(
      color: const Color(0xFF405D72),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Icon(
                choice.icon,
                size: 50.0,
                color: const Color(0xFFFFF8F3),
              ),
            ),
            Text(
              choice.title,
              style: textStyle!.copyWith(
                color: const Color(0xFFFFF8F3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
