import 'package:flutter/material.dart';

class Drawer6 extends StatelessWidget {
  const Drawer6({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1a3047),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 50),
          Container(
            height: 100,
            color: const Color(0xFF4f5e6f),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 10),
                Icon(
                  Icons.flutter_dash,
                  size: 48.0,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Flutter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _createDrawerItem(
            icon: Icons.play_circle_outline,
            text: 'Get Started',
            onTap: () {},
          ),
          const SizedBox(height: 20),
          _createDrawerItem(
            icon: Icons.book,
            text: 'Samples & Tutorials',
            onTap: () {},
          ),
          const SizedBox(height: 20),
          _createDrawerItem(
            icon: Icons.bug_report,
            text: 'Testing & Debugging',
            onTap: () {},
          ),
          const SizedBox(height: 20),
          _createDrawerItem(
            icon: Icons.speed,
            text: 'Performance & Optimization',
            onTap: () {},
          ),
          const SizedBox(height: 20),
          const Divider(color: Colors.white),
          const SizedBox(height: 20),
          _createDrawerItem(
            icon: Icons.cloud_upload,
            text: 'Deployment',
            onTap: () {},
          ),
          const SizedBox(height: 20),
          _createDrawerItem(
            icon: Icons.folder_open,
            text: 'Resources',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      GestureTapCallback? onTap}) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon, color: Colors.white),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
