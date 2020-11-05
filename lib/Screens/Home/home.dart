import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hoteli/constants.dart';

import 'components/Explore/Explore.dart';
import 'components/Profile.dart';
import 'components/Tips/Trips.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [Explore(), Trips(), Profile()];

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: darkGold,

        onTap: (value) => onTabTapped(value),
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(CupertinoIcons.search),
            title: new Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(FontAwesomeIcons.heart),
            title: new Text('Trips'),
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), title: Text('Profile'))
        ],
      ),
    );
  }
}
