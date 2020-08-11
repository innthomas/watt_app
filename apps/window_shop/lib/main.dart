import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double mheight = 90;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "watt window",
      home: Scaffold(
        appBar: AppBar(
          title: Text('watt window'),
        ),
        body: ListView(
          children: [
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry a"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry b"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry c"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry d"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry e"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry f"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry g"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry h"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry i"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry j"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry k"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry l"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry m"),
              ),
            ),
            Container(
              height: mheight,
              color: Colors.green,
              child: Center(
                child: Text("entry n"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
