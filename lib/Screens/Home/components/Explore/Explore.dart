import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hoteli/Model/models.dart';
import 'package:hoteli/Screens/Home/components/Explore/widgets/dealsCard.dart';
import 'package:hoteli/Screens/Home/components/Explore/widgets/pop_destinations.dart';
import 'package:hoteli/Screens/Hotel/hotel.dart';
import 'package:hoteli/Util/fadeAnimations.dart';

import 'package:hoteli/constants.dart';

class Explore extends StatefulWidget {
  static String id = 'explore';
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  List<Hotel> hotels = [
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
                    delegate: ExplorePageHeader(
                      expandedHeight: MediaQuery.of(context).size.height,
                    )),
                SliverList(
                    delegate: SliverChildListDelegate([
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Popular Destinations',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PopularDestinationCard(
                          image: 'images/pop1.jpg',
                          title: 'Paris',
                        ),
                        PopularDestinationCard(
                          image: 'images/pop2.jpg',
                          title: 'Venice',
                        ),
                        PopularDestinationCard(
                          image: 'images/pop3.jpg',
                          title: 'Spain',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Best Deals',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Text('View all'),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: hotels.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HotelDetails(
                                        hotel: hotels[index],
                                      ))),
                          child: DealsCard(
                            hotel: hotels[index],
                          ),
                        ),
                      ))
                ]))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: wight),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.search,
                        color: darkGold,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Where are you going?')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class ExplorePageHeader extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  List<SwiperList> images = [
    SwiperList(
        image: 'images/views.jpg',
        text1: 'Find Best Deals',
        text2: 'Extraordinary five-star outdoor activities'),
    SwiperList(
        image: 'images/views1.jpg',
        text1: 'Find Best Deals',
        text2: 'Extraordinary five-star outdoor activities'),
    SwiperList(
        image: 'images/views2.jpg',
        text1: 'Find Best Deals',
        text2: 'Extraordinary five-star outdoor activities')
  ];

  ExplorePageHeader({this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    int index = 0;
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.clip,
      children: [
        Theme(
          data: ThemeData(primaryColor: darkGold),
          child: Swiper(
            pagination: new SwiperPagination(alignment: Alignment.bottomRight),
            onIndexChanged: (value) => index = value,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              images[index].image,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      left: 20,
                      top: expandedHeight / 2.3 - shrinkOffset,
                      child: Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              images[index].text1,
                              style: TextStyle(
                                  color: wight,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(images[index].text2,
                                style: TextStyle(
                                    color: wight,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20))
                          ],
                        ),
                      )),
                ],
              );
            },
            autoplay: true,
            itemCount: images.length,
          ),
        ),
        Positioned(
            top: expandedHeight / 1.6 - shrinkOffset,
            left: 20,
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: darkGold, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'View Hotels',
                  style: TextStyle(color: wight, fontSize: 20),
                ),
              ),
            )),
      ],
    );
  }

  @override
  double get maxExtent => 500;

  @override
  double get minExtent => 150;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
