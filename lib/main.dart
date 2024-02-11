import 'package:flutter/material.dart';
import 'package:ipo_insights/components/loginPage.dart';

import 'components/HomeScreen.dart';
import 'components/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColorDark: Colors.purple[800],
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Set the SplashScreen as the home screen
    );
  }
}

