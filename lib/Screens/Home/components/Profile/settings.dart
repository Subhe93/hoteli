import 'package:flutter/material.dart';
import 'package:hoteli/Util/fadeAnimations.dart';
import 'package:hoteli/constants.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: wight,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
          width: screenWidth,
          height: screenHeight,
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(15),
              child: FadeAnimation(
                0.5,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: boldTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        child: ListView(
                          children: [
                            ListTile(
                              leading: Text(
                                'Notifications',
                                style: listViewTextStyle,
                              ),
                              trailing: Icon(
                                Icons.notifications,
                                color: Colors.grey,
                              ),
                            ),
                            Divider(height: 3),
                            ListTile(
                              leading: Text(
                                'Country',
                                style: listViewTextStyle,
                              ),
                              trailing: Text(
                                'UAE',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Divider(height: 3),
                            ListTile(
                              leading: Text(
                                'Currency',
                                style: listViewTextStyle,
                              ),
                              trailing: Text(
                                'ADE',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Divider(height: 3),
                            ListTile(
                                leading: Text(
                                  'Terms Of Services',
                                  style: listViewTextStyle,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.grey,
                                )),
                            Divider(height: 3),
                            ListTile(
                                leading: Text(
                                  'Privacy Policy',
                                  style: listViewTextStyle,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.grey,
                                )),
                            Divider(height: 3),
                            ListTile(
                                leading: Text(
                                  'Give Us Feed Back',
                                  style: listViewTextStyle,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.grey,
                                )),
                            Divider(height: 3),
                            ListTile(
                                leading: Text(
                                  'Log out',
                                  style: listViewTextStyle,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
