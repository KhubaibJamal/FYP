import 'package:flutter/material.dart';

class ExpansionTile2 extends StatefulWidget {
  final String text;
  final List lists;
  const ExpansionTile2({
    Key? key,
    required this.text,
    required this.lists,
  }) : super(key: key);

  @override
  _ExpansionTile2State createState() => _ExpansionTile2State();
}

class _ExpansionTile2State extends State<ExpansionTile2> {
  ListView listsWidget() {
    return ListView.builder(
      itemCount: widget.lists.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          title: GestureDetector(
            onTap: () {},
            child: Text(
              widget.lists[index],
              style: const TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFa4000b),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            color: const Color(0xFFa4000b),
          ),
          gradient: const LinearGradient(
            stops: [0.04, 0.04],
            colors: [
              Color(0xFFa4000b),
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: ExpansionTile(
            title: Text(widget.text),
            children: [
              SizedBox(
                height: 200,
                child: listsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
