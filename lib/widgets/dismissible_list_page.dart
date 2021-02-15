import 'package:flutter/material.dart';

class DismissibleListPage extends StatefulWidget {
  @override
  _DismissibleListPageState createState() => _DismissibleListPageState();
}

class _DismissibleListPageState extends State<DismissibleListPage> {
  final _items = List<String>.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          String item = _items[index];
          return Dismissible(
            // Keys allow flutter to uniquely identify widgets
            key: Key(item),
            child: ListTile(title: Center(child: Text(item))),
            onDismissed: (DismissDirection dir) {
              setState(() => _items.removeAt(index));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(dir == DismissDirection.endToStart
                    ? "$item Removed"
                    : "$item Liked"),
                action: SnackBarAction(
                  onPressed: () => setState(() => _items.insert(index, item)),
                  label: "UNDO",
                ),
              ));
            },
            background: Container(
              padding: const EdgeInsets.only(left: 5),
              color: Colors.green,
              child: Icon(Icons.thumb_up_sharp, color: Colors.white),
              alignment: Alignment.centerLeft,
            ),
            secondaryBackground: Container(
              padding: const EdgeInsets.only(right: 5),
              color: Colors.red,
              child: Icon(Icons.delete, color: Colors.white),
              alignment: Alignment.centerRight,
            ),
          );
        },
      ),
    );
  }
}
