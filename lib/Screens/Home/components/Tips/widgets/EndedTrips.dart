import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hoteli/Model/models.dart';

import '../../../../../constants.dart';

class EndedTrips extends StatelessWidget {
  final Hotel hotel;
  const EndedTrips({
    Key key,
    this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.6,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: wight,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(hotel.image), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(1, 2), // changes position of shadow
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width / 2.3,
                height: 180),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.name,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Wembley, London',
                    style: TextStyle(color: labelColor, fontSize: 15),
                  ),
                  Text(
                    '07 Nov - 13 Nov, 1 Room - 2 Adults',
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: darkGold,
                      ),
                      Container(
                        width: 100,
                        child: Text(
                          '${hotel.distance} km to the city ',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: labelColor, fontSize: 15),
                        ),
                      )
                    ],
                  ),
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
                  Row(
                    children: [
                      Text('\$${hotel.price}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text('/per night',
                          style: TextStyle(
                              color: labelColor,
                              fontSize: 15,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
