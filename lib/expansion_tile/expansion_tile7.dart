import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpansionTile7 extends StatefulWidget {
  const ExpansionTile7({super.key});

  @override
  _ExpansionTile7State createState() => _ExpansionTile7State();
}

class _ExpansionTile7State extends State<ExpansionTile7> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ExpansionPanelList(
              elevation: 1,
              expandedHeaderPadding: const EdgeInsets.all(0),
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      leading: CircleAvatar(
                        child: Text('A'),
                      ),
                      title: Text(
                        'Tap me!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('I expand!'),
                    );
                  },
                  body: Column(
                    children: [
                      const ListTile(
                        title: Text(
                          "Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.\n"
                          "Use me any time you think your app could benefit from being just a bit more Material.\n"
                          "These buttons control the next card down!",
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                _isExpanded = true;
                              });
                            },
                            icon: const Icon(Icons.arrow_downward),
                            label: const Text('Open'),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                _isExpanded = false;
                              });
                            },
                            icon: const Icon(Icons.arrow_upward),
                            label: const Text('Close'),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                _isExpanded = !_isExpanded;
                              });
                            },
                            icon: const Icon(Icons.swap_vert),
                            label: const Text('Toggle'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  isExpanded: _isExpanded,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
