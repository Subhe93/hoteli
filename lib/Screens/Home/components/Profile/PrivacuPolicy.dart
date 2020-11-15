import 'package:flutter/material.dart';
import 'package:hoteli/constants.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            width: screenWidth,
            height: screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Our Privacy Policy",
                      style: boldTextStyle,
                    ),
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                        child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    loremIpsum,
                    style: loremIpsumTextStyle,
                  ),
                ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
