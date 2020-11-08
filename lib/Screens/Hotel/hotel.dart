import 'dart:ui';
import 'package:latlong/latlong.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hoteli/Model/models.dart';
import 'package:hoteli/Screens/Hotel/widgets/ReviewCard.dart';
import 'package:hoteli/Screens/Hotel/widgets/image.dart';
import 'package:hoteli/Util/fadeAnimations.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../constants.dart';

class HotelDetails extends StatefulWidget {
  final Hotel hotel;
  static String id = 'hotel';

  const HotelDetails({Key key, this.hotel}) : super(key: key);
  @override
  _HotelState createState() => _HotelState();
}

class _HotelState extends State<HotelDetails> {
  List<String> photos = [
    'images/rooms1.jpeg',
    'images/rooms2.jpg',
    'images/rooms3.jpg',
    'images/rooms4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FadeAnimation(
          0.5,
          Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: HotelHeader(
                        hotel: widget.hotel,
                        expandedHeight: MediaQuery.of(context).size.height),
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.hotel.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              Text('\$${widget.hotel.price}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Wembley, London',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: darkGold,
                                    size: 30,
                                  ),
                                  Container(
                                    width: 120,
                                    height: 18,
                                    child: Text(
                                      '${widget.hotel.distance} km to the city',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              Text('/per night',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal))
                            ],
                          ),
                          Divider(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Summery',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Container(
                                  child: Text(
                                    'Featuring a fitness center, Grand Royal Park hote is located in Swiden,Adjacent to Fikia Beach and set in a building with a colorful facade, this humble seaside hotel is a 6-minute walk from the Lixouri Harbour ferry terminal. It',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ],
                                color: wight,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '9.0',
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                            color: darkGold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Overall Rating',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              )),
                                          RatingBar(
                                            initialRating: widget.hotel.rating,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: darkGold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        child: Text('Room',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      ),
                                      new LinearPercentIndicator(
                                        width: 250,
                                        lineHeight: 5.0,
                                        percent: 0.9,
                                        backgroundColor: wight,
                                        progressColor: darkGold,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        child: Text('Service',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      ),
                                      new LinearPercentIndicator(
                                        width: 250,
                                        lineHeight: 5.0,
                                        percent: 0.8,
                                        backgroundColor: wight,
                                        progressColor: darkGold,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        child: Text('Location',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      ),
                                      new LinearPercentIndicator(
                                        width: 250,
                                        lineHeight: 5.0,
                                        percent: 0.6,
                                        backgroundColor: wight,
                                        progressColor: darkGold,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        child: Text('Price',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      ),
                                      new LinearPercentIndicator(
                                        width: 250,
                                        lineHeight: 5.0,
                                        percent: 0.5,
                                        backgroundColor: wight,
                                        progressColor: darkGold,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Photos',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Row(
                                children: [
                                  Text('View all',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: darkGold)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: darkGold,
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 100,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: photos.length,
                                itemBuilder: (context, index) => SimpleImage(
                                      image: photos[index],
                                    )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Reviews',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Row(
                                children: [
                                  Text('View all',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: darkGold)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: darkGold,
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 350,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                itemCount: 2,
                                itemBuilder: (context, index) => ReviewCard(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                'Book Now',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: wight,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                color: darkGold,
                                borderRadius: BorderRadius.circular(30)),
                          )
                        ],
                      ),
                    )
                  ]))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HotelHeader extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Hotel hotel;

  HotelHeader({this.hotel, this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    int index = 0;
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.clip,
      children: [
        Image.asset(
          hotel.image,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: expandedHeight / 1.5 - shrinkOffset * 1.5,
          left: MediaQuery.of(context).size.width / 12,
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          hotel.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: wight),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Wembley, London',
                                      style:
                                          TextStyle(color: wight, fontSize: 18),
                                    ),
                                    Icon(
                                      Icons.location_on,
                                      color: darkGold,
                                      size: 30,
                                    ),
                                    Container(
                                      width: 70,
                                      height: 20,
                                      child: Text(
                                        '${hotel.distance} km to the city',
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                            color: wight, fontSize: 18),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar(
                                      initialRating: hotel.rating,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: darkGold,
                                      ),
                                    ),
                                    Text(
                                      '80 Reviews',
                                      style:
                                          TextStyle(color: wight, fontSize: 20),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('\$${hotel.price}',
                                    style: TextStyle(
                                        color: wight,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                Text('per night',
                                    style: TextStyle(
                                        color: wight,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal)),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Expanded(
                            child: FlutterMap(
                              options: new MapOptions(
                                center: new LatLng(44.5, 44.09),
                                zoom: 13.0,
                              ),
                              layers: [
                                new TileLayerOptions(
                                    urlTemplate:
                                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                                    subdomains: ['a', 'b', 'c']),
                                new MarkerLayerOptions(
                                  markers: [
                                    new Marker(
                                      width: 50.0,
                                      height: 50.0,
                                      point: new LatLng(44.5, 44.09),
                                      builder: (ctx) => new Container(
                                        child: InkWell(
                                          onTap: () => {},
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: darkGold,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Book Now',
                              style: TextStyle(color: wight, fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        )
        // Positioned(
        //     top: expandedHeight / 1.5 - shrinkOffset,
        //     left: MediaQuery.of(context).size.width / 9,
        //     child: Container(
        //       height: 200,
        //       width: MediaQuery.of(context).size.width - 100,
        //       decoration: BoxDecoration(
        //           color: darkGold, borderRadius: BorderRadius.circular(30)),
        //       child: Center(
        //         child: Text(
        //           'View Hotels',
        //           style: TextStyle(color: wight, fontSize: 20),
        //         ),
        //       ),
        //     )),
        ,
        Positioned(
          top: expandedHeight / 1.06 - shrinkOffset * 1.5,
          left: MediaQuery.of(context).size.width / 3,
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Row(
                  children: [
                    Text(
                      'More Details',
                      style: TextStyle(
                          color: wight,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: wight,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
