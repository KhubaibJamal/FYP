import 'package:flutter/material.dart';

class Drawer7 extends StatefulWidget {
  const Drawer7({super.key});

  @override
  State<Drawer7> createState() => _Drawer7State();
}

class _Drawer7State extends State<Drawer7> {
  int _selectedDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.segment,
                        size: 45.0,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Row(
                        children: [
                          Text(
                            'Marketerz',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'v1.0',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(width: 8),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xFF0038c4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                "Personal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                "Business",
                                style: TextStyle(
                                  color: Color(0xFF0038c4),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _createDrawerItem(
                icon: Icons.dashboard, text: 'Dashboard', index: 0),
            _createDrawerItem(
                icon: Icons.shopping_bag, text: 'Products', index: 1),
            _createDrawerItem(icon: Icons.mail, text: 'Mail', index: 2),
            _createDrawerItem(
                icon: Icons.campaign, text: 'Campaigns', index: 3),
            _createDrawerItem(
                icon: Icons.calendar_today, text: 'Calendar', index: 4),
            _createDrawerItem(icon: Icons.contacts, text: 'Contacts', index: 5),
            const Divider(color: Color(0xFFb0b0b2)),
            Row(
              children: [
                Expanded(
                  child: _createDrawerItem(
                      icon: Icons.notifications,
                      text: 'Notifications',
                      index: 6),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFc0f375),
                  ),
                  child: Center(child: Text(23.toString())),
                ),
                const SizedBox(width: 10),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: _createDrawerItem(
                        icon: Icons.chat, text: 'Chat', index: 7)),
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFf5be2c),
                  ),
                  child: Center(child: Text(13.toString())),
                ),
                const SizedBox(width: 10),
              ],
            ),
            _createDrawerItem(icon: Icons.settings, text: 'Settings', index: 8),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    required int index,
  }) {
    return ListTile(
      tileColor: Colors.white,
      title: Row(
        children: [
          Icon(icon, color: const Color(0xFFb0b0b2)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFFb0b0b2),
              ),
            ),
          )
        ],
      ),
      selected: _selectedDrawerIndex == index,
      onTap: () {
        setState(() {
          _selectedDrawerIndex = index;
        });
      },
    );
  }
}
