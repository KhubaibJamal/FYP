import 'package:flutter/material.dart';

class BottomSheet8 extends StatelessWidget {
  const BottomSheet8({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/logo.png'),
          ),
          title: Text('Get Widget'),
          subtitle: Text('Open source UI library'),
          trailing: Icon(
            Icons.check_circle,
            color: Color(0xFF0fdc60),
            size: 35,
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Get widget reduces your overall app development time to 30% because of its pre-built clean UI widget that you can use in flutter app development. We have spent more than 1000+ hours to build this library to make flutter developer\'s life easy.',
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: double.infinity,
          color: const Color(0xFF0fdc60),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Get in touch',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'info@getwidget.dev',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
