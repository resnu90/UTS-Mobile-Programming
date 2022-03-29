import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final icon = CupertinoIcons.bin_xmark_fill;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,

          actions: [
            IconButton(
              icon: Icon(icon),
              color: Colors.black45,
              onPressed: () {

              },
            ),
          ],
          title: const
          Text('Order History'),
          titleTextStyle: Theme.of(context).textTheme.headlineLarge,

        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => EntryItem(
            data[index],
          ),
        ),
      ),
    );
  }
}

// Welcome to another flutter tutorial
// In this video we will see how to create a multi-level Expansion List
// First Let's create a class for each row in the Expansion List

class Entry {
  final String title;
  final List<Entry>
  children; // Since this is an expansion list ...children can be another list of entries
  Entry(this.title, [this.children = const <Entry>[]]);
}

// This is the entire multi-level list displayed by this app
final List<Entry> data = <Entry>[
  Entry(
    '23 March 2022',
    <Entry>[
      Entry(
        'House Rent',
        <Entry>[
          Entry('OD2303220001'),
          Entry('OD2303220002'),
          Entry('OD2303220003'),
        ],
      ),
      Entry('Car Rent'),
    ],
  ),
  // Second Row
  Entry('22 March 2022', <Entry>[
    Entry('House Rent'),
    Entry('Car Rent'),
  ]),
  Entry(
    '21 March 2022',
    <Entry>[
      Entry('House Rent'),
      Entry('Car Rent'),

    ],
  ),
];

// Create the Widget for the row
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}