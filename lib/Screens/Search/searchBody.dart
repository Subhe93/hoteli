import 'package:flutter/material.dart';
import 'package:hoteli/Screens/login.dart/components/roundedTextBox.dart';
import 'package:hoteli/Screens/login.dart/components/rounded_button.dart';
import 'package:hoteli/constants.dart';

class SearchBody extends StatefulWidget {
  SearchBody({Key key}) : super(key: key);

  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  List<String> categoryImages = [
    'images/hotels.jpg',
    'images/backpack.jpg',
    'images/bed_and_breakfast1.jpg',
    'images/resort.jpg',
  ];
  List<String> searchList = [
    'images/pop1.jpg',
    'images/pop2.jpg',
    'images/pop3.jpg',
    'images/views.jpg'
  ];
  List<String> categoryNames = [
    'Hotels',
    'Backpacker',
    'Bed & breakfast',
    'Resort',
  ];
  List<String> searchNames = ['Paris', 'Venice', 'Spain', 'Egypet'];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(25, 8, 0, 10),
              child: Text('Search', style: boldTextStyle)),
          Center(
            child: Container(
              height: screenHeight / 15,
              width: screenWidth / 1.1,
              child: RoundedTextBox(
                hint: "Where are you going?",
                prefIcon: Icon(Icons.search, color: darkGold),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: screenHeight / 7,
                    width: screenWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                          itemCount: categoryImages.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black38,
                                                offset: Offset(3, 3),
                                                blurRadius: 10)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(38),
                                        ),
                                        child: CircleAvatar(
                                          radius: 38,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(38),
                                            child: Image.asset(
                                              categoryImages[index],
                                              height: screenHeight / 7,
                                              width: double.infinity,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  categoryNames[index],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            );
                          }),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            height: screenHeight / 14,
                            width: screenWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Latest searches',
                                  style: boldTextStyle.copyWith(fontSize: 25),
                                ),
                                Text(
                                  'Clear all',
                                  style: TextStyle(
                                      color: darkGold,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 22, 10),
                          child: Container(
                            width: screenWidth,
                            child: GridView.builder(
                              physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 30),
                              itemCount: searchList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(3, 3),
                                            blurRadius: 5,
                                            color: Colors.black26)
                                      ]),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25)),
                                        child: Image.asset(
                                          searchList[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8,
                                            left: 18,
                                            right: 8,
                                            bottom: 2),
                                        child: Container(
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                searchNames[index],
                                                style: boldTextStyle.copyWith(
                                                    fontSize: 15),
                                              ),
                                              Text(
                                                "1 Room - 2 Adults",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            39),
                                              ),
                                              Text(
                                                "12 - 20 Dec",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            39),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        )),
                      ],
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
