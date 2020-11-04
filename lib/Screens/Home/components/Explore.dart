import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  static String id = 'explore';
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverPersistentHeader(delegate: null)],
      ),
    );
  }
}
