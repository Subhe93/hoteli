import 'package:flutter/material.dart';

import '../../../constants.dart';

class RoundedTextBox extends StatelessWidget {
  final String hint;
  final Widget prefIcon;
  const RoundedTextBox({Key key, this.hint, this.prefIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: wight,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12,
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefIcon,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class RoundedLargeTextBox extends StatelessWidget {
  final String hint;
  final Widget prefIcon;
  const RoundedLargeTextBox({Key key, this.hint, this.prefIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: wight,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12,
        ),
        child: TextField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefIcon,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
