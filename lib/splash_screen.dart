import 'package:flutter/material.dart';
import 'dart:async';
import 'package:trekking_club/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => runApp(MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/18.jpg",
          width: MediaQuery.of(context).size.width,
          gaplessPlayback: true,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 2 - 10,
            top: 60
          ),
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
