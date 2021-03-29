import 'package:flutter/material.dart';

class FacebookAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              "facebook",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              ContainerIconButton(icon: Icons.search),
              ContainerIconButton(icon: Icons.message_outlined),
            ],
            expandedHeight: 100,
            bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home, color: Colors.blue, size: 30),
                    Icon(Icons.video_call, color: Colors.black87, size: 30),
                    Icon(Icons.pages, color: Colors.black87, size: 30),
                    Icon(Icons.notification_important,
                        color: Colors.black87, size: 30),
                    Icon(Icons.more_vert, color: Colors.black87, size: 30),
                  ],
                ),
              ),
              preferredSize: Size.zero,
            ),
            floating: true,
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: index % 2 != 0 ? Colors.green : Colors.blue,
                height: 100,
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ContainerIconButton extends StatelessWidget {
  final IconData icon;

  const ContainerIconButton({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.grey.shade100),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
