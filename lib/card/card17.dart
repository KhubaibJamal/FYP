import 'package:flutter/material.dart';

class Card17 extends StatelessWidget {
  const Card17({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20, right: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF2c2c2c),
        border: Border.all(
          color: const Color(0xFFfc9775),
          width: 5,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.network(
                'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A=',
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "+44 7377 000000",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Icon(
            Icons.graphic_eq_outlined,
            color: Color(0xFFfc9775),
            size: 50,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
