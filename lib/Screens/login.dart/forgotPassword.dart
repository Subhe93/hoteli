import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/roundedTextBox.dart';
import 'components/rounded_button.dart';

class ForgotPassword extends StatelessWidget {
  static String id = 'forgot_password';
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
            'Forgot Password',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter your email to recive an email to reset your password',
                style: TextStyle(fontSize: 18, color: labelColor),
              ),
              SizedBox(
                height: 20,
              ),
              RoundedTextBox(
                hint: 'Your email',
              ),
              SizedBox(
                height: 30,
              ),
              RoundedButton(
                tapped: () => Navigator.pop(context),
                color: darkGold,
                textcolor: wight,
                text: 'send',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
