import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hoteli/Screens/Home/components/Profile/InviteFreinds.dart';
import 'package:hoteli/Screens/Home/components/Profile/changePassword.dart';
import 'package:hoteli/Screens/Home/components/Profile/helpCenter.dart';
import 'package:hoteli/Screens/Home/components/Profile/settings.dart';
import 'package:hoteli/Util/fadeAnimations.dart';
import 'package:hoteli/constants.dart';
import 'package:page_transition/page_transition.dart';

class Profile extends StatefulWidget {
  static String id = 'profile';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FadeAnimation(
            0.5,
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Amanda',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 23),
                        ),
                        Text(
                          'View and edit profile',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            image: AssetImage('images/views.jpg'),
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, top: 8, bottom: 8),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  child: ChangePasswordScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Change Password',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  )),
                              Icon(
                                FontAwesomeIcons.lock,
                                color: labelColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: InviteFreindsScreen(),
                                  type: PageTransitionType.bottomToTop));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Invite Friends',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  )),
                              Icon(
                                Icons.people,
                                color: labelColor,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Credits & Coupons',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                )),
                            Icon(
                              FontAwesomeIcons.gift,
                              color: labelColor,
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HelpCenterScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Help Center',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  )),
                              Icon(
                                FontAwesomeIcons.infoCircle,
                                color: labelColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Payments',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                )),
                            Icon(
                              FontAwesomeIcons.creditCard,
                              color: labelColor,
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  child: Settings()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Settings',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  )),
                              Icon(
                                Icons.settings,
                                color: labelColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
