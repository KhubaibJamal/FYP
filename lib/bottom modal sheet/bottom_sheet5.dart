import 'package:flutter/material.dart';

class BottomSheet5 extends StatefulWidget {
  const BottomSheet5({super.key});

  @override
  State<BottomSheet5> createState() => _BottomSheet5State();
}

class _BottomSheet5State extends State<BottomSheet5> {
  int scopeSelectedValue = 1;
  int genderSelectedValue = 1;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Theme.of(context).primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              const Text(
                "scope",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              CustomRadio(
                value: scopeSelectedValue,
                groupValue: 1,
                onChanged: (value) {
                  setState(() {
                    scopeSelectedValue = value;
                  });
                },
                text: "public",
                icon: Icons.public,
              ),
              CustomRadio(
                text: "friends",
                value: scopeSelectedValue,
                groupValue: 2,
                icon: Icons.person_outline_rounded,
                onChanged: (value) {
                  setState(() {
                    scopeSelectedValue = value;
                  });
                },
              ),
              CustomRadio(
                text: "group",
                value: scopeSelectedValue,
                groupValue: 3,
                icon: Icons.person_2_sharp,
                onChanged: (value) {
                  setState(() {
                    scopeSelectedValue = value;
                  });
                },
              ),

              SizedBox(width: width * 0.3),
              const Text(
                "Gender",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              CustomRadio(
                value: genderSelectedValue,
                groupValue: 4,
                icon: Icons.group,
                onChanged: (value) {
                  setState(() {
                    genderSelectedValue = value;
                  });
                },
                text: "both",
              ),
              CustomRadio(
                text: "male",
                value: genderSelectedValue,
                groupValue: 5,
                icon: Icons.man_3_outlined,
                onChanged: (value) {
                  setState(() {
                    genderSelectedValue = value;
                  });
                },
              ),
              CustomRadio(
                text: "female",
                value: genderSelectedValue,
                groupValue: 6,
                icon: Icons.man_2_outlined,
                onChanged: (value) {
                  setState(() {
                    genderSelectedValue = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRadio extends StatefulWidget {
  final int value;
  final int groupValue;
  final String text;
  final IconData? icon;
  final void Function(int) onChanged;

  const CustomRadio(
      {Key? key,
      required this.text,
      this.icon,
      required this.value,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: InkWell(
        onTap: () => widget.onChanged(widget.groupValue),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                widget.icon,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 75,
                child: Text(
                  widget.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 20,
                width: 20,
                margin: const EdgeInsets.all(4),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    shape: BoxShape.circle,
                    color: selected ? Colors.white : Colors.transparent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
