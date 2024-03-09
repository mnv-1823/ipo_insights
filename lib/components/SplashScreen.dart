import 'package:flutter/material.dart';
import 'package:ipo_insights/components/Wrapper.dart';

import 'loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();


    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Wrapper()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[

            Image.asset('lib/assets/image.png',)
              //alignment: Alignment.center,),
            //Text('IPO Insights'),
          ],
        ),
      ),
    );
  }
}

