import 'package:flutter/material.dart';

class BottomSheet11 extends StatefulWidget {
  const BottomSheet11({super.key});

  @override
  _BottomSheet11State createState() => _BottomSheet11State();
}

class _BottomSheet11State extends State<BottomSheet11> {
  int currentStep = 0;

  final List<Widget> steps = [
    const Step1(),
    Step2(),
    Step3(),
  ];
  final List<String> stepTitles = [
    'Type',
    'Room',
    'Star',
  ];

  void nextStep() {
    if (currentStep < steps.length - 1) {
      setState(() {
        currentStep++;
      });
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Add hotel',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (currentStep == 0)
                IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.transparent,
                    ),
                    onPressed: () {}),
              if (currentStep > 0)
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: previousStep,
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stepTitles[currentStep],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Step ${currentStep + 1} of 3'),
                ],
              ),
              if (currentStep == steps.length - 1)
                IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.transparent,
                  ),
                  onPressed: () {},
                ),
              if (currentStep < steps.length - 1)
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: nextStep,
                ),
            ],
          ),
          steps[currentStep],
        ],
      ),
    );
  }
}

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheck5 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          'Please select your accommodation type',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        CustomCheckBox(
          isCheck: isCheck1,
          onChanged: (bool? value) {
            setState(() {
              isCheck1 = !isCheck1;
            });
          },
          text: "Hotel",
        ),
        CustomCheckBox(
          isCheck: isCheck2,
          onChanged: (bool? value) {
            setState(() {
              isCheck2 = !isCheck2;
            });
          },
          text: "Apartment",
        ),
        CustomCheckBox(
          isCheck: isCheck3,
          onChanged: (bool? value) {
            setState(() {
              isCheck3 = !isCheck3;
            });
          },
          text: "Holiday House",
        ),
        CustomCheckBox(
          isCheck: isCheck4,
          onChanged: (bool? value) {
            setState(() {
              isCheck4 = !isCheck4;
            });
          },
          text: "Hostel",
        ),
        CustomCheckBox(
          isCheck: isCheck5,
          onChanged: (bool? value) {
            setState(() {
              isCheck5 = !isCheck5;
            });
          },
          text: "Other",
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff003663),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheck5 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          'Please select the number of bedrooms',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        CustomCheckBox(
          isCheck: isCheck1,
          onChanged: (bool? value) {
            setState(() {
              isCheck1 = !isCheck1;
            });
          },
          text: "1 Bedroom",
        ),
        CustomCheckBox(
          isCheck: isCheck2,
          onChanged: (bool? value) {
            setState(() {
              isCheck2 = !isCheck2;
            });
          },
          text: "2 Bedroom",
        ),
        CustomCheckBox(
          isCheck: isCheck3,
          onChanged: (bool? value) {
            setState(() {
              isCheck3 = !isCheck3;
            });
          },
          text: "3 Bedroom",
        ),
        CustomCheckBox(
          isCheck: isCheck4,
          onChanged: (bool? value) {
            setState(() {
              isCheck4 = !isCheck4;
            });
          },
          text: "4 Bedrooms",
        ),
        CustomCheckBox(
          isCheck: isCheck5,
          onChanged: (bool? value) {
            setState(() {
              isCheck5 = !isCheck5;
            });
          },
          text: "other",
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff003663),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Step3 extends StatefulWidget {
  const Step3({super.key});

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Please select your accommodation type',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        CustomCheckBox(
          isCheck: isChecked1,
          onChanged: (bool? value) {
            setState(() {
              isChecked1 = !isChecked1;
            });
          },
          child: Row(
            children: List.generate(
                5, (index) => const Icon(Icons.star, color: Colors.orange)),
          ),
        ),
        CustomCheckBox(
          isCheck: isChecked2,
          onChanged: (bool? value) {
            setState(() {
              isChecked2 = !isChecked2;
            });
          },
          child: Row(
            children: List.generate(
                4, (index) => const Icon(Icons.star, color: Colors.orange)),
          ),
        ),
        CustomCheckBox(
          isCheck: isChecked3,
          onChanged: (bool? value) {
            setState(() {
              isChecked3 = !isChecked3;
            });
          },
          child: Row(
            children: List.generate(
                3, (index) => const Icon(Icons.star, color: Colors.orange)),
          ),
        ),
        CustomCheckBox(
          isCheck: isChecked4,
          onChanged: (bool? value) {
            setState(() {
              isChecked4 = !isChecked4;
            });
          },
          child: Row(
            children: List.generate(
                2, (index) => const Icon(Icons.star, color: Colors.orange)),
          ),
        ),
        CustomCheckBox(
          isCheck: isChecked5,
          onChanged: (bool? value) {
            setState(() {
              isChecked5 = !isChecked5;
            });
          },
          child: Row(
            children: List.generate(
                1, (index) => const Icon(Icons.star, color: Colors.orange)),
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff003663),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomCheckBox extends StatelessWidget {
  final bool isCheck;
  final Function(bool?) onChanged;
  final String? text;
  final Widget? child;
  const CustomCheckBox({
    super.key,
    required this.isCheck,
    required this.onChanged,
    this.text,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          activeColor: const Color(0xFFde3e3e),
          value: isCheck,
          onChanged: onChanged,
        ),
        text != null && text!.isNotEmpty
            ? Text(
                text!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003663),
                ),
              )
            : const SizedBox.shrink(),
        SizedBox(child: child),
      ],
    );
  }
}
