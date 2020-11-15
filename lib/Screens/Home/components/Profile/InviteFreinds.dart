import 'package:flutter/material.dart';
import 'package:hoteli/constants.dart';

class InviteFreindsScreen extends StatelessWidget {
  const InviteFreindsScreen({Key key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: screenHeight / 2,
                color: Colors.red,
                child: Image.asset('images/invite.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Invite Your Friends',
                style: boldTextStyle.copyWith(letterSpacing: 1.0),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                child: Text(
                  'Let youy friends Know about the latest offers and the best places to visit',
                  style: loremIpsumTextStyle.copyWith(letterSpacing: 1.0),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: 120,
                child: RaisedButton.icon(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  label: Text('Invite', style: TextStyle(color: Colors.white)),
                  color: fBlue,
                  icon: Icon(Icons.share, size: 20, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
