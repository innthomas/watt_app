import 'package:flutter/material.dart';
import 'categories/shoes.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSliderCarousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          //Image.network(
          //  "https://res.cloudinary.com/innthomas/image/upload/v1566254708/samples/animals/kitten-playing.gif"),
          // Image.network(
          //"https://res.cloudinary.com/innthomas/image/upload/v1566254708/samples/animals/kitten-playing.gif"),
          //Image.network(
          //"https://res.cloudinary.com/innthomas/image/upload/v1566254708/samples/animals/kitten-playing.gif"),
          AssetImage("assets/images/inn2.jpeg"),
          AssetImage("images/inn2.jpeg"),
        ],
      ),
    );
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 120,
            color: Colors.green[300],
            child: Center(
              child: Image.network(
                "https://res.cloudinary.com/innthomas/image/upload/v1566254708/samples/animals/kitten-playing.gif",
              ),
            ),
          ),
          imageSliderCarousel,
          Container(
            height: 120,
            child: Image.asset("assets/images/inn4.jpg"),
          )
        ],
      ),
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message),
            onPressed: null,
          ),
          IconButton(icon: Icon(Icons.search), onPressed: null),
          IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null),
        ],
        centerTitle: true,
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
                color: Colors.teal[350],
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
