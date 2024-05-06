import 'package:flutter/material.dart';
import 'package:fyp/templates/healthy_food_template/dashboard_screen.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class DetailScreen extends StatefulWidget {
  final String image, text;
  const DetailScreen({super.key, required this.image, required this.text});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff2f3949),
                Color(0xff131923),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Hero(
                      tag: "image",
                      child: Image(
                        image: AssetImage(widget.image),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(title: "4", subTitle: "SERVES"),
                    TextWidget(title: "1h", subTitle: "COOKS IN"),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      widget.text,
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                color: const Color(0xfffbfbfe),
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 13.333),
                    Text(
                      'A super-fresh and zingy salad packed with green veg and gnarly, sticky-sweet chicken, topped with crispy shallots. Delicious!',
                      textAlign: TextAlign.justify,
                      maxLines: 3,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: const Color(0xff464e5c),
                            height: 1.2,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomAnimation(
                      title: "CAL",
                      startAngle: 150,
                      valueNotifier: 300,
                    ),
                    BottomAnimation(
                      title: "FAT",
                      startAngle: 260,
                      valueNotifier: 140,
                    ),
                    BottomAnimation(
                      title: "CAR",
                      startAngle: 120,
                      valueNotifier: 340,
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
































                  
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(15.0),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xfffe6622),
                            Color(0xffffd411),
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "\$4.99/ Add to card",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomAnimation extends StatelessWidget {
  const BottomAnimation({
    super.key,
    required this.title,
    required this.startAngle,
    required this.valueNotifier,
  });
  final String title;
  final double startAngle;
  final double valueNotifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff212733),
        borderRadius: BorderRadius.all(
          Radius.circular(250),
        ),
      ),
      child: Stack(
        children: [
          SimpleCircularProgressBar(
            size: 90,
            maxValue: 500,
            startAngle: startAngle,
            progressStrokeWidth: 6,
            backStrokeWidth: 4,
            backColor: const Color(0xff414958),
            progressColors: const [
              Color(0xfffe6622),
              Color(0xffffd411),
            ],
            animationDuration: 2,
            valueNotifier: ValueNotifier(valueNotifier),
            onGetText: (double value) {
              return Text(
                '${(value).toInt()}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            },
          ),
          Positioned(
            top: 15,
            left: 32,
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: const Color(0xff59606e),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
