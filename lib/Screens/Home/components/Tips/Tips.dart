import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hoteli/Model/models.dart';
import 'package:hoteli/Screens/Home/components/Tips/widgets/UpComingHotelcards.dart';
import 'package:hoteli/constants.dart';

class Trips extends StatefulWidget {
  static String id = 'trips';
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  List<Hotel> upComing = [
    Hotel(
        image: 'images/views.jpg',
        name: 'Grand Royal Hotel',
        price: '180',
        distance: '2.0',
        rating: 4.1),
    Hotel(
        image: 'images/views1.jpg',
        name: 'Queen Hotel',
        price: '200',
        distance: '2.0',
        rating: 4.5),
    Hotel(
        image: 'images/views2.jpg',
        name: 'La Blasa Hotel',
        price: '200',
        distance: '2.0',
        rating: 4.5)
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Trips',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: CupertinoSlidingSegmentedControl(
                    groupValue: index,
                    thumbColor: darkGold,
                    backgroundColor: Colors.black12,
                    children: <int, Widget>{
                      0: Text("Upcoming"),
                      1: Text("Finished"),
                      2: Text('Favorites')
                    },
                    onValueChanged: (value) {
                      setState(() {
                        index = value;
                      });
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) => UpComingHotelCard(
                        hotel: upComing[index],
                      ),
                      itemCount: upComing.length,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
