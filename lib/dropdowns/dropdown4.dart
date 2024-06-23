import 'package:flutter/material.dart';

class Dropdown4 extends StatefulWidget {
  const Dropdown4({super.key});

  @override
  State<Dropdown4> createState() => _Dropdown4State();
}

class _Dropdown4State extends State<Dropdown4> {
  TextEditingController menuController = TextEditingController();
  MenuItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 16.0;
    return DropdownMenu<MenuItem>(
      controller: menuController,
      width: width,
      hintText: "Select Menu",
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Color(0xFFF6E6CB),
        filled: true,
      ),
      requestFocusOnTap: true,
      enableFilter: true,
      menuStyle: MenuStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFFE7D4B5)),
      ),
      label: const Text('Select Menu'),
      onSelected: (MenuItem? menu) {
        setState(() {
          selectedMenu = menu;
        });
      },
      dropdownMenuEntries:
          menuItems.map<DropdownMenuEntry<MenuItem>>((MenuItem menu) {
        return DropdownMenuEntry<MenuItem>(
          value: menu,
          label: menu.label,
          leadingIcon: Icon(menu.icon),
          style: ButtonStyle(
            iconColor:
                MaterialStateProperty.all<Color>(const Color(0xFF373A40)),
          ),
        );
      }).toList(),
    );
  }
}

class MenuItem {
  final int id;
  final String label;
  final IconData icon;

  MenuItem(this.id, this.label, this.icon);
}

List<MenuItem> menuItems = [
  MenuItem(1, 'Home', Icons.home),
  MenuItem(2, 'Profile', Icons.person),
  MenuItem(3, 'Settings', Icons.settings),
  MenuItem(4, 'Favorites', Icons.favorite),
  MenuItem(5, 'Notifications', Icons.notifications)
];
