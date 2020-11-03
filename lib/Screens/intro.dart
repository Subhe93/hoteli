import 'package:flutter/material.dart';
import 'package:hoteli/Screens/login.dart/createAccount.dart';
import 'package:hoteli/Screens/login.dart/login.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../constants.dart';

class Introduction extends StatefulWidget {
  static String id = "introduction";
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
              height: 500,
              child: IntroductionScreen(
                showNextButton: false,
                onDone: () => {print('s')},
                done: const Text("Done",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: wight)),
                dotsDecorator: DotsDecorator(
                    size: const Size.square(10.0),
                    activeSize: const Size(20.0, 10.0),
                    activeColor: darkGold,
                    color: Colors.black26,
                    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0))),
                pages: [
                  PageViewModel(
                    title: "Plan your Trips",
                    body:
                        "book one of your unique hotels to escape the ordinary",
                    image: Center(
                      child: Image.asset('images/travel1.png'),
                    ),
                    decoration: const PageDecoration(
                        imageFlex: 2,
                        bodyTextStyle: TextStyle(fontSize: 15),
                        titleTextStyle: TextStyle(
                            color: labelColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  PageViewModel(
                    title: "Find Best Deals",
                    body:
                        "Find deals for any season from cosy country homes to city flats",
                    image: Center(
                      child: Image.asset('images/travel2.png'),
                    ),
                    decoration: const PageDecoration(
                        imageFlex: 2,
                        bodyTextStyle: TextStyle(fontSize: 15),
                        titleTextStyle: TextStyle(
                            color: labelColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  PageViewModel(
                    title: "Best Travilling all time ",
                    body:
                        "book one of your unique hotels to escape the ordinary",
                    image: Center(
                      child: Image.asset('images/travel3.png'),
                    ),
                    decoration: const PageDecoration(
                        imageFlex: 2,
                        bodyTextStyle: TextStyle(fontSize: 15),
                        titleTextStyle: TextStyle(
                            color: labelColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )),
          Column(
            children: [
              InkWell(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => Login()))
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ], color: lightGold, borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => CreateAccount()))
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: wight,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Create account',
                      style: TextStyle(color: labelColor, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
