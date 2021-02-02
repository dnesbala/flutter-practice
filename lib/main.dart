import 'package:flutter/material.dart';
import 'widgets/slivers_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Practice",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SliversPage(),
    );
  }
}
