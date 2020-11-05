import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class PopularDestinationCard extends StatelessWidget {
  final String image;
  final String title;
  const PopularDestinationCard({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                title,
                style: TextStyle(
                    color: wight, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
