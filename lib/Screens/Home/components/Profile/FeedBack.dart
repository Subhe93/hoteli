import 'package:flutter/material.dart';
import 'package:hoteli/Screens/login.dart/components/roundedTextBox.dart';
import 'package:hoteli/Util/fadeAnimations.dart';
import 'package:hoteli/constants.dart';

class FeedbackScreen extends StatefulWidget {
  FeedbackScreen({Key key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FadeAnimation(
            0.5,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
                  child: Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Text(
                      'What do you Have in Mind?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: RoundedTextBox(
                    hint: 'Your Eamil address',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: RoundedLargeTextBox(
                    hint: 'Write us your Feedback',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3, 5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              color: Colors.grey.withOpacity(0.5))
                        ],
                        color: darkGold,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Send',
                        style: TextStyle(color: wight, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
