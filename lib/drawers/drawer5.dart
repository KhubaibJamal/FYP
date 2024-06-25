import 'package:flutter/material.dart';

class Drawer5 extends StatelessWidget {
  const Drawer5({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal,
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40.0,
                  child: Icon(
                    Icons.eco,
                    size: 40.0,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _createDrawerItem(
                  icon: Icons.dashboard,
                  text: 'Dashboard',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.inventory,
                  text: 'Inventory',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.search,
                  text: 'Search',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.shopping_cart,
                  text: 'Online orders',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.code,
                  text: 'Codes',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.settings,
                  text: 'Settings',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.info,
                  text: 'About',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    GestureTapCallback? onTap,
  }) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon, color: Colors.white),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
