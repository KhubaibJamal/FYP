import 'package:flutter/material.dart';

class BottomSheet7 extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
        name: 'Eva Mendez',
        lastActive: '11 minutes ago',
        avatarColor: Colors.purple),
    Contact(name: 'John Wick', username: 'babayaga', avatarColor: Colors.grey),
    Contact(name: 'Jane Doe', username: 'janedoe', avatarColor: Colors.pink),
    Contact(
        name: 'Alice Smith',
        username: 'alicesmith',
        avatarColor: Colors.orange),
  ];

  BottomSheet7({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: contact.avatarColor,
              child: Text(contact.name[0]),
            ),
            title: Text(contact.name),
            subtitle: contact.lastActive != null
                ? Text(contact.lastActive!)
                : Text(contact.username ?? ''),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: const Color(0xFF12db64),
              ),
              onPressed: () {
              },
              child: const Text(
                'Send',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String? lastActive;
  final String? username;
  final Color avatarColor;

  Contact({
    required this.name,
    this.lastActive,
    this.username,
    required this.avatarColor,
  });
}
