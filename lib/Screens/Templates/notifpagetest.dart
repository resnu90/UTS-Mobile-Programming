import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uts/models/constants.dart';
import 'package:flutter_uts/utils/user_preferences.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            shrinkWrap: true,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(5, 5),
                          )
                        ],
                      ),
                      child: Icon(
                        CupertinoIcons.rhombus_fill,
                        color: kCustomBlackColor,
                      ),
                    ),
                    Container(

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Text(

                          'Carous',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.4),
                            offset: Offset(-5, 10),
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image(
                          fit: BoxFit.fill,
                          width: 55,
                          image: AssetImage('asset/images/face.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) => EntryItem(
                data[index],
    ),
    ),
    ),
        ],
      ),
    ),
      ),
    );
  }
}
class Entry {
  final String title;
  final List<Entry>
  children; // Since this is an expansion list ...children can be another list of entries
  Entry(this.title, [this.children = const <Entry>[]]);
}

// This is the entire multi-level list displayed by this app
final List<Entry> data = <Entry>[
  Entry(
    'Men',
    <Entry>[
      Entry(
        'Top',
        <Entry>[
          Entry('Black Hoodie'),
          Entry('Grey Hoodie'),
          Entry('White Hoodie'),
        ],
      ),
      Entry('Bottom'),
    ],
  ),
  // Second Row
  Entry('Woman', <Entry>[
    Entry('Top'),
    Entry('Bottom'),
  ]),
  Entry(
    'Shoes',
    <Entry>[
      Entry('Formal'),
      Entry('Sneakers'),
      Entry(
        'Sneakerss',
        <Entry>[
          Entry('Air Jordan 1'),
          Entry('Air Jordan 2'),
          Entry('Air Jordan 3'),
          Entry('Air Jordan 4'),
        ],
      )
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