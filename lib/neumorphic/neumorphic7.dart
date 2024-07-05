import 'package:flutter/material.dart';

class Neumorphic7 extends StatelessWidget {
  const Neumorphic7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double bevel = 10.0;
    final Color color = Colors.grey.shade200;
    const Offset blurOffset = Offset(bevel / 2, bevel / 2);

    return Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.4,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.mix(Colors.black, 0.1),
              color,
              color,
              color.mix(Colors.white, 0.5),
            ],
            stops: const [0.0, 0.3, 0.6, 1.0],
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: bevel,
              offset: -blurOffset,
              color: color.mix(Colors.white, 0.6),
            ),
            BoxShadow(
              blurRadius: bevel,
              offset: blurOffset,
              color: color.mix(Colors.black, 0.3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xff4338CA),
              radius: 25,
              child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/FlutterBricksLogo-Med.png?alt=media&token=7d03fedc-75b8-44d5-a4be-c1878de7ed52"),
            ),
            const SizedBox(height: 15),
            const Text(
              "How are you doing?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3.5),
            const Text(
              "This is a sub text, use it to clarify",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(text: "Great", onPressed: () {}),
                CustomButton(
                  text: "Not bad",
                  onPressed: () {},
                  invertedColors: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool invertedColors;
  const CustomButton(
      {required this.text,
      required this.onPressed,
      this.invertedColors = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        alignment: Alignment.center,
        side: MaterialStateProperty.all(
          const BorderSide(
            width: 1,
            color: Color(0xff4338CA),
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.only(
            right: 25,
            left: 25,
            top: 0,
            bottom: 0,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
            invertedColors ? Colors.white : const Color(0xff4338CA)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: invertedColors ? const Color(0xff4338CA) : Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Neumorphic Dialog Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => const Neumorphic7(),
              );
            },
            child: const Text('Show Neumorphic Dialog'),
          ),
        ),
      ),
    );
  }
}
