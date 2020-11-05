import 'package:flutter/material.dart';

class SwiperList {
  final String text1;
  final String text2;
  final String image;
  SwiperList({this.image, this.text1, this.text2});
}

class Hotel {
  String name;
  String image;
  String distance;
  String price;
  double rating;

  Hotel({this.distance, this.image, this.name, this.price, this.rating});
}
