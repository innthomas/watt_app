import 'package:flutter/material.dart';
import 'homeBackground.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watt Market',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Watt Market'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const TextStyle mstyle = TextStyle(color: Colors.white70);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 35,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                ),
                child: Text(
                  "categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                )),
            ListTile(
              focusColor: Colors.green,
              title: Text('boutique'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              focusColor: Colors.green,
              title: Text('wrappers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              focusColor: Colors.green,
              title: Text('groceries'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              focusColor: Colors.green,
              title: Text('bags'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              focusColor: Colors.green,
              title: Text('close'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal[100],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal[300],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: mstyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(
              'cart',
              style: mstyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text(
              'loyalty',
              style: mstyle,
            ),
          ),
        ],

        //selectedItemColor: Colors.amber[800],
      ),
      appBar: AppBar(
        title: Text("WattMarket"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null),
          IconButton(icon: Icon(Icons.message), onPressed: null),
          IconButton(icon: Icon(Icons.arrow_drop_down_circle), onPressed: null),
        ],
      ),
      body: HomeBackground(),
    );
  }
}
