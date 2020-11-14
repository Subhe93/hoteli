import 'package:flutter/material.dart';
import 'package:hoteli/Screens/Search/searchBody.dart';
import 'package:hoteli/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: wight,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SearchBody(),
    );
  }
}
