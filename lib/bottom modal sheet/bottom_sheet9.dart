import 'package:flutter/material.dart';

class BottomSheet9 extends StatefulWidget {
  const BottomSheet9({super.key});

  @override
  _BottomSheet9State createState() => _BottomSheet9State();
}

class _BottomSheet9State extends State<BottomSheet9> {
  String _sortBy = 'Date modified';
  String _order = 'Descending';
  bool _pinFavorites = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ListTile(
            title: Text('Sort by'),
          ),
          RadioListTile<String>(
            activeColor: const Color(0xFFf46a4e),
            title: const Text('Title'),
            value: 'Title',
            groupValue: _sortBy,
            onChanged: (value) {
              setState(() {
                _sortBy = value!;
              });
            },
          ),
          RadioListTile<String>(
            activeColor: const Color(0xFFf46a4e),
            title: const Text('Date created'),
            value: 'Date created',
            groupValue: _sortBy,
            onChanged: (value) {
              setState(() {
                _sortBy = value!;
              });
            },
          ),
          RadioListTile<String>(
            activeColor: const Color(0xFFf46a4e),
            title: const Text('Date modified'),
            value: 'Date modified',
            groupValue: _sortBy,
            onChanged: (value) {
              setState(() {
                _sortBy = value!;
              });
            },
          ),
          const Divider(),
          const ListTile(
            title: Text('Order'),
          ),
          RadioListTile<String>(
            activeColor: const Color(0xFFf46a4e),
            title: const Text('Ascending'),
            value: 'Ascending',
            groupValue: _order,
            onChanged: (value) {
              setState(() {
                _order = value!;
              });
            },
          ),
          RadioListTile<String>(
            activeColor: const Color(0xFFf46a4e),
            title: const Text('Descending'),
            value: 'Descending',
            groupValue: _order,
            onChanged: (value) {
              setState(() {
                _order = value!;
              });
            },
          ),
          const Divider(),
          SwitchListTile(
            activeColor: const Color(0xFFf46a4e),
            title: const Text('Pin favorites to top'),
            value: _pinFavorites,
            onChanged: (value) {
              setState(() {
                _pinFavorites = value;
              });
            },
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    height: 60,
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Color(0xFFf46a4e),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              const VerticalDivider(color: Colors.red, thickness: 3),
              const SizedBox(width: 5),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    height: 60,
                    child: Center(
                      child: Text(
                        "Done",
                        style: TextStyle(
                          color: Color(0xFFf46a4e),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
