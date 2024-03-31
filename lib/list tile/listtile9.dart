import 'package:flutter/material.dart';

class ListTile9 extends StatelessWidget {
  final String title;
  final String subtitle;
  const ListTile9({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.transparent.withOpacity(0.4),
            offset: const Offset(-3, -4),
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.15),
            Colors.white.withOpacity(0.05),
          ],
        ),
      ),
      child: Center(
        child: ListTile(
          leading: SizedBox(
            width: 50,
            height: 80,
            child: Image.network(
              'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A=',
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white60,
            ),
          ),
          trailing: const Icon(
            Icons.card_giftcard,
            color: Colors.white60,
          ),
        ),
      ),
    );
  }
}
