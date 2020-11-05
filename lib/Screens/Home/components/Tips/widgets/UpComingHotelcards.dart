import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hoteli/Model/models.dart';

import '../../../../../constants.dart';

class UpComingHotelCard extends StatelessWidget {
  final Hotel hotel;
  const UpComingHotelCard({
    Key key,
    this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 325,
        child: Column(
          children: [
            Text(
              '07 Nov - 13 Nov, 1 Room - 2 Adults',
              style: TextStyle(fontSize: 18, color: labelColor),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: wight,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage(hotel.image),
                              fit: BoxFit.cover)),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 20,
                              right: 20,
                              child: Icon(
                                CupertinoIcons.heart,
                                color: darkGold,
                                size: 30,
                              ))
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 8, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(hotel.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            Text('\$${hotel.price}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Wembley, London',
                                style:
                                    TextStyle(color: labelColor, fontSize: 16),
                              ),
                              Icon(
                                Icons.location_on,
                                color: darkGold,
                              ),
                              Container(
                                width: 100,
                                child: Text(
                                  '${hotel.distance} km to the city ',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: labelColor, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                          Text('/per night',
                              style: TextStyle(
                                  color: labelColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Row(
                        children: [
                          RatingBar(
                            initialRating: hotel.rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: darkGold,
                            ),
                          ),
                          Text('80 Reviews',
                              style: TextStyle(color: labelColor, fontSize: 15))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
