import 'package:flutter/material.dart';

class Drawer2 extends StatelessWidget {
  const Drawer2({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.7,
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: height * 0.1),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  color: const Color(0xFFB2BDD0).withOpacity(0.5),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 55,
                  backgroundImage: AssetImage('assets/jennifer.jpg'),
                  child: SizedBox(),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Jennifer Merry",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "show Profile",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
              ),
            ),
            SizedBox(height: height * 0.01),
            const Divider(thickness: 0.5, color: Colors.grey),
            SizedBox(height: height * 0.02),
            DrawerRow(
              width: width,
              text: "start",
              icon: Icons.home,
            ),
            const SizedBox(height: 15),
            DrawerRow(
              width: width,
              text: "calendar",
              icon: Icons.calendar_month,
            ),
            const SizedBox(height: 15),
            DrawerRow(
              width: width,
              text: "qiblah",
              icon: Icons.mosque,
            ),
            const Spacer(),
            const Divider(thickness: 1.5, color: Colors.grey),
            GestureDetector(
              onTap: () {},
              child: DrawerRow(
                width: width,
                text: "settings",
                icon: Icons.settings,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class DrawerRow extends StatelessWidget {
  const DrawerRow({
    super.key,
    required this.width,
    required this.text,
    required this.icon,
  });

  final double width;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: width * 0.05),
        Icon(icon),
        SizedBox(width: width * 0.05),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                height: 0,
              ),
        )
      ],
    );
  }
}
