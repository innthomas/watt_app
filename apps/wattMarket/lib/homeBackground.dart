import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wattMarket/items/item1.dart';
import 'package:wattMarket/items/item2.dart';
import 'package:wattMarket/items/item3.dart';
import 'package:wattMarket/items/item4.dart';

class HomeBackground extends StatefulWidget {
  @override
  _HomeBackgroundState createState() => _HomeBackgroundState();
}

class _HomeBackgroundState extends State<HomeBackground> {
  int _currentIndex = 0;
  List cardList = [
    Item1(),
    Item2(),
    //Item3(),
    Item4(),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 120,
          color: Colors.green[300],
          child: Image.network(
            "https://res.cloudinary.com/innthomas/image/upload/v1566254708/samples/animals/kitten-playing.gif",
          ),
        ),
        Divider(),
        Container(
          height: 120,
          width: 200,
          color: Colors.green[300],
          child: CarouselSlider(
            height: 200.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: Duration(seconds: 10),
            aspectRatio: 2.0,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.blueAccent,
                    child: card,
                  ),
                );
              });
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(cardList, (index, url) {
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
              ),
            );
          }),
        ),
        Container(
          height: 120,
          width: 200,
          color: Colors.green[300],
          child: Image.network(
            "https://res.cloudinary.com/innthomas/image/upload/v1597294081/gif/giphy2_roqrhd.gif",
          ),
        ),
        Container(
          height: 120,
          width: 200,
          color: Colors.green[300],
          child: Image.network(
            "https://res.cloudinary.com/innthomas/image/upload/v1597294710/gif/Cat-fucks-around-in-a-shopping-isle_buwljz.gif",
          ),
        ),
      ],
    );
  }
}
