import 'package:flutter/material.dart';

class ShoesWindow extends StatefulWidget {
  @override
  _ShoesWindowState createState() => _ShoesWindowState();
}

class _ShoesWindowState extends State<ShoesWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shoes"),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Text("shoe1"),
          Text("shoe1"),
          Text("shoe2"),
          Text("shoe3"),
          Text("shoe4"),
          Text("shoe5"),
          Text("shoe6"),
        ],
      ),
    );
  }
}
