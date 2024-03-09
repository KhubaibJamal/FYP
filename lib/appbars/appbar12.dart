import 'package:flutter/material.dart';

class AppBar12 extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  const AppBar12({
    super.key,
  }) : preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: 'AppBar12Btn',
                child: Card(
                  elevation: 10,
                  shape: kBackButtonShape,
                  child: MaterialButton(
                    height: 50,
                    minWidth: 50,
                    elevation: 10,
                    shape: kBackButtonShape,
                    onPressed: () {},
                    child:
                        const Icon(Icons.person_outline, color: Colors.black),
                  ),
                ),
              ),
              Hero(
                tag: 'title',
                transitionOnUserGestures: true,
                child: Card(
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 50,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            "Widget World",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

ShapeBorder kBackButtonShape = const RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

Widget kBackBtn = const Icon(
  Icons.arrow_back_ios,
);
