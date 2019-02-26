import 'dart:io';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:trekking_club/splash_screen.dart';

class Authenticate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trekking',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Fingerprint(),
    );
  }
}

class Fingerprint extends StatefulWidget {
  @override
  _FingerprintState createState() => _FingerprintState();
}

class _FingerprintState extends State<Fingerprint> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  @override
  void initState() {
    super.initState();

    _authorizeNow();
  }

  Future<void> _authorizeNow() async {
    bool isAuthorized = false;
    try {
      isAuthorized = await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "Please authenticate to open the app",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      if (isAuthorized) {
//        runApp(MyApp());
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => SplashScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fingerprint Authentication"),
        elevation: 4.0,
        titleSpacing: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: FlatButton(
                child: Text("Cancel"),
                onPressed: () => exit(0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
