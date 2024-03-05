import 'package:flutter/material.dart';

class AppBar7 extends StatelessWidget {
  const AppBar7({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: const Color(0xFF4A001F),
      leading: Padding(
        padding: const EdgeInsets.only(left: 6.0),
        child: ClipOval(
          child: Image.network(
            'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A=',
            height: 30,
            width: 30,
          ),
        ),
      ),
      title: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Top App Bar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "handcrafted",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        PopupMenuButton<Text>(
          iconColor: Colors.white,
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                child: Text(
                  'setting',
                ),
              ),
              const PopupMenuItem(
                child: Text(
                  'change profile',
                ),
              ),
              const PopupMenuItem(
                child: Text(
                  'link device',
                ),
              ),
            ];
          },
        )
      ],
    );
  }
}
