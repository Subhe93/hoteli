import 'package:flutter/material.dart';
import 'package:hoteli/Screens/login.dart/components/roundedTextBox.dart';
import 'package:hoteli/Util/fadeAnimations.dart';
import 'package:hoteli/constants.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordScreen({Key key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                    'Change Passowrd',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Text(
                      'Enter your new password and confirm your password',
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
                    hint: 'New Passowrd',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: RoundedTextBox(
                    hint: 'Repeat Password',
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
                        'Apply',
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
