import 'package:flutter/material.dart';

class ListTile2 extends StatelessWidget {
  final String text;
  final String subtitle;
  final Function() onTap;
  final Color color;
  const ListTile2(
      {required this.text,
      required this.onTap,
      this.color = Colors.white,
      Key? key, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      textColor: color,
      iconColor: color,
      tileColor: const Color(0xFFFFD23F),
      child: ListTile(
        leading: const Icon(
          Icons.attach_money_outlined,
          size: 28,
        ),
        title: Text(
          text,
          textScaler: const TextScaler.linear(1),
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle:  Text(
          subtitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 28,
        ),
        selected: false,
        onTap: onTap,
      ),
    );
  }
}
