import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hoteli/Screens/Home/home.dart';
import 'package:hoteli/Screens/get_started.dart';
import 'package:hoteli/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: wight,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: wight,
            canvasColor: Colors.white.withOpacity(0.95),
            accentColor: darkGold),
        initialRoute: GetStarted.id,
        routes: {
          GetStarted.id: (context) => GetStarted(),
          Home.id: (context) => Home()
        });
  }
}
