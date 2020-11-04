import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hoteli/Screens/Home/home.dart';

import '../../constants.dart';
import 'components/roundedTextBox.dart';
import 'components/rounded_button.dart';

class CreateAccount extends StatelessWidget {
  static String id = 'create_account';
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
            'Sign up',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                              borderRadius: BorderRadius.circular(30),
                              color: fBlue),
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
                    style: TextStyle(fontSize: 18, color: labelColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedTextBox(
                    hint: 'First Name',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedTextBox(
                    hint: 'Second Name',
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
                    height: 30,
                  ),
                  RoundedButton(
                    color: darkGold,
                    textcolor: wight,
                    text: 'Sign up',
                    tapped: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) => Home())),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'By signing up, you agree with our terms of Services and Privacy Policy',
                    style: TextStyle(fontSize: 18, color: labelColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?.',
                        style: TextStyle(fontSize: 18, color: labelColor),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CreateAccount())),
                        child: Text(
                          'Log in',
                          style: TextStyle(fontSize: 18, color: darkGold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
