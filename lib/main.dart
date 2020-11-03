import 'package:flutter/material.dart';
import 'package:hoteli/Screens/get_started.dart';
import 'package:hoteli/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            canvasColor: Colors.white.withOpacity(0.95), accentColor: darkGold),
        initialRoute: GetStarted.id,
        routes: {
          GetStarted.id: (context) => GetStarted(),
        });
  }
}
