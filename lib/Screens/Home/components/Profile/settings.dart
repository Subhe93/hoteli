import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:hoteli/Screens/Home/components/Profile/FeedBack.dart';
import 'package:hoteli/Screens/Home/components/Profile/PrivacuPolicy.dart';
import 'package:hoteli/Screens/get_started.dart';
import 'package:hoteli/Util/fadeAnimations.dart';
import 'package:hoteli/constants.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:page_transition/page_transition.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _value = 1;
  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByName('Saudi Arabia');
  @override
  void initState() {
    super.initState();
  }

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
                            GestureDetector(
                              onTap: () {
                                _openCountryPickerDialog();
                              },
                              child: ListTile(
                                leading: Text(
                                  'Country',
                                  style: listViewTextStyle,
                                ),
                                trailing: Text(
                                  _selectedDialogCountry.name,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Divider(height: 3),
                            GestureDetector(
                              onTap: () {
                                _showCurrencyAlertDialog(context);
                              },
                              child: ListTile(
                                leading:
                                    Text('Currency', style: listViewTextStyle),
                                trailing: Text(
                                  'AED',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: PrivacyPolicyScreen(),
                                        type: PageTransitionType.bottomToTop));
                              },
                              child: ListTile(
                                  leading: Text(
                                    'Privacy Policy',
                                    style: listViewTextStyle,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Colors.grey,
                                  )),
                            ),
                            Divider(height: 3),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: FeedbackScreen(),
                                        type: PageTransitionType.bottomToTop));
                              },
                              child: ListTile(
                                  leading: Text(
                                    'Give Us Feed Back',
                                    style: listViewTextStyle,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Colors.grey,
                                  )),
                            ),
                            Divider(height: 3),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    PageTransition(
                                        child: GetStarted(),
                                        type: PageTransitionType.fade));
                              },
                              child: ListTile(
                                  leading: Text(
                                    'Log out',
                                    style: listViewTextStyle,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Colors.grey,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }

  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.pink),
            child: CountryPickerDialog(
                titlePadding: EdgeInsets.all(8.0),
                searchCursorColor: Colors.pinkAccent,
                searchInputDecoration: InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: Text('Select Country'),
                onValuePicked: (Country country) => setState(() {
                      _selectedDialogCountry = country;
                    }),
                itemBuilder: _buildDialogItem)),
      );
  void _showCurrencyAlertDialog(conetxt) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: FlatButton(
                  color: darkGold,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red[900],
                ),
              ),
            ],
            title: Center(
              child: Text(
                'Currency',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            content: Container(
              padding: EdgeInsets.all(20.0),
              child: DropdownButton(
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "SAR",
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "USD",
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          "AED",
                        ),
                        value: 3),
                    DropdownMenuItem(
                        child: Text(
                          "SP",
                        ),
                        value: 4)
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
            ),
          );
        });
  }
}

class SettingsItem extends StatelessWidget {
  final name;
  final trailing;
  const SettingsItem({Key key, this.name, this.trailing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: name,
      trailing: trailing,
    );
  }
}

Widget _buildDialogItem(Country country) => Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(width: 8.0),
        Text("+${country.phoneCode}"),
        SizedBox(width: 8.0),
        Flexible(child: Text(country.name))
      ],
    );
