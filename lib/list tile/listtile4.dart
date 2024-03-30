import 'package:flutter/material.dart';

class ListTile4 extends StatelessWidget {
  final String title;
  final String subtitle;
  const ListTile4({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  final dishImage =
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/malika%2FRectangle%2013.png?alt=media&token=6a5f056c-417c-48d3-b737-f448e4f13321";

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(dishImage),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          const Icon(
            Icons.favorite,
            size: 15,
            color: Color(0xffFF8527),
          ),
          Text(subtitle),
        ],
      ),
      trailing: const Column(
        children: [
          Icon(Icons.more_vert_outlined),
        ],
      ),
    );
  }
}
