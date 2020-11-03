import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hoteli/Screens/login.dart/forgotPassword.dart';
import 'package:hoteli/constants.dart';

import 'components/roundedTextBox.dart';
import 'components/rounded_button.dart';

class Login extends StatelessWidget {
  static String id = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Login',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), color: fBlue),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            color: wight,
                          ),
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              color: wight,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            color: wight,
                          ),
                        ),
                        Text(
                          'Twitter',
                          style: TextStyle(
                              color: wight,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'or login with email',
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 20,
            ),
            RoundedTextBox(
              hint: 'Your Email',
            ),
            SizedBox(
              height: 20,
            ),
            RoundedTextBox(
              hint: 'Password',
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => ForgotPassword())),
              child: Text(
                'Forgot your password?',
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RoundedButton(
         
              color: darkGold,
              textcolor: wight,
              text: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
