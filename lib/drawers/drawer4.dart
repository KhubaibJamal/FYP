import 'package:flutter/material.dart';

class Drawer4 extends StatelessWidget {
  const Drawer4({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF121824),
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Khubaib.co"),
            accountEmail: Text("khubaib@appmaking.co"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDKkPI4lEHAisJA-6RccJVjzL3DOQMLx005Hcy4eYDUnRvD3IyqHfBZK8SxzQlOEdTqVw&usqp=CAU"),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://img.freepik.com/free-vector/gradient-geometric-shapes-dark-background-design_23-2148433740.jpg?size=626&ext=jpg&ga=GA1.1.1625073852.1719261061&semt=ais_user",
                ),
                fit: BoxFit.fill,
              ),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/women/74.jpg"),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/47.jpg"),
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text("Home", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.account_box, color: Colors.white),
            title: const Text("About", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.grid_3x3_outlined, color: Colors.white),
            title:
                const Text("Products", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail, color: Colors.white),
            title: const Text("Contact", style: TextStyle(color: Colors.white)),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
