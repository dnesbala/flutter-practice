import 'package:flutter/material.dart';

class SliversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Sliver Appbar"),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10),
              Icon(Icons.more_vert),
              SizedBox(width: 5),
            ],
            leading: Icon(Icons.menu),
            expandedHeight: 100,
            floating: true,
            pinned: true,
            bottom: PreferredSize(
              child: Text(
                "This is sliver appbar bottom.",
                style: TextStyle(color: Colors.white),
              ),
              preferredSize: Size.zero,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              _buildList(20),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Theme.of(context).primaryColor,
              child: Text(
                "Sliver To Box Adapter",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildList(int count) {
    List<Widget> itemList = [];
    for (var i = 0; i < count; i++) {
      itemList.add(
        ListTile(
          title: Text("Item $i"),
        ),
      );
    }
    return itemList;
  }
}
