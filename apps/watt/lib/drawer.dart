import 'package:flutter/material.dart';
import 'categories/shoes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("watt market"),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        elevation: 35.0,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("categories"),
              decoration: BoxDecoration(
                color: Colors.teal[300],
              ),
            ),
            ListTile(
              title: Text("shoes"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
            ListTile(
              title: Text("groceries"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
            ListTile(
              title: Text("dresses"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
            ListTile(
              title: Text("close"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
