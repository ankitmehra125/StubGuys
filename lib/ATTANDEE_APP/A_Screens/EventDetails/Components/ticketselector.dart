import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: 100.0,
          viewportFraction: 0.3,
          onPageChanged: (index, _) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        items: [
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10,
          11,
          12,
          13,
          14,
          15,
          16,
          17,
          18,
          19,
          20
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(),
                child: Center(
                  child: Text(
                    '$i',
                    style: TextStyle(
                      fontSize: _currentIndex == i - 1 ? 70 : 30,
                      fontFamily: 'SatoshiBold',
                      color:
                          _currentIndex == i - 1 ? Color(0xFF201335) : Color(0xFFF1F1F2),
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      );
  }
}