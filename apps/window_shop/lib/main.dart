import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double mheight = 190;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "watt window",
      home: Scaffold(
        drawer: Drawer(
          elevation: 40.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Categories"),
                decoration: BoxDecoration(
                  color: Colors.blue[500],
                ),
              ),
              ListTile(
                title: Text("shoes"),
                onTap: null,
              ),
              ListTile(
                title: Text("bags"),
                onTap: null,
              ),
              ListTile(
                title: Text("fabric"),
                onTap: null,
              ),
              ListTile(
                title: Text("groceries"),
                onTap: null,
              ),
              ListTile(
                title: Text("electronics"),
                onTap: null,
              ),
              ListTile(
                title: Text("foodstuff"),
                onTap: null,
              ),
            ],
          ),
        ),
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
                child: Image.network(
                  "https://res.cloudinary.com/innthomas/image/upload/v1566254708/samples/animals/kitten-playing.gif",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print('i was clicked');
              },
              child: Container(
                height: mheight,
                color: Colors.green,
                child: Center(
                  child: Text("entry d"),
                ),
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
                child: Image.network(
                    'https://res.cloudinary.com/innthomas/image/upload/v1566553810/innthomaspassport/innpix_hnaubr.jpg'),
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
                child: Image.network(
                    "https://res.cloudinary.com/innthomas/image/upload/v1566254706/samples/food/spices.jpg"),
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
                )),
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
                child: Image.network(
                    'https://res.cloudinary.com/innthomas/image/upload/v1566553810/innthomaspassport/innpix_hnaubr.jpg'),
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
