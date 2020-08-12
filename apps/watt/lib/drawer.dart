import 'package:flutter/material.dart';
import 'categories/shoes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: null),
            Spacer(),
            IconButton(icon: Icon(Icons.shopping_basket), onPressed: null),
            Spacer(),
            IconButton(icon: Icon(Icons.notifications), onPressed: null),
            Spacer(),
            IconButton(icon: Icon(Icons.card_giftcard), onPressed: null),
          ],
        ),
        color: Colors.teal[400],
        elevation: 35.0,
      ),
      backgroundColor: Colors.teal[200],
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
