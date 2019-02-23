import 'dart:io';
import 'package:flare_flutter/flare_actor.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:trekking_club/main.dart';

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
  bool _canCheckBiometric = false;
  String _authorizedOrNot = "Not Authorized";
  List<BiometricType> _availableBiometricTypes = List<BiometricType>();

  @override
  void initState() {
    super.initState();

    _authorizeNow();
  }

  Future<void> _checkBiometric() async {
    bool canCheckBiometric = false;
    try {
      canCheckBiometric = await _localAuthentication.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _canCheckBiometric = canCheckBiometric;
    });
  }

  Future<void> _getListOfBiometricTypes() async {
    List<BiometricType> listOfBiometrics;

    try {
      listOfBiometrics = await _localAuthentication.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _availableBiometricTypes = listOfBiometrics;
    });
  }

  Future<void> _authorizeNow() async {
    bool isAuthorized = false;
    try {
      isAuthorized = await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "Please authenticate to complete your transaction",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      if (isAuthorized) {
        _authorizedOrNot = "Authorized";
        Future.delayed(const Duration(seconds: 5), () => FlareActor("images/brain,flr",
        alignment: Alignment(-0.8, 0.0),
        animation: "brain",
        shouldClip: true,
        )
        );
        runApp(MyApp());
      } else {
        _authorizedOrNot = "Not Authorized";
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
          children: <Widget>[
            RaisedButton(
              child: Text("Cancel"),
              onPressed: () => exit(0),
            ),
            SizedBox(height: 40),
            Text("Can we check Biometric : $_canCheckBiometric"),
            RaisedButton(
              onPressed: _checkBiometric,
              child: Text("Check Biometric"),
              color: Colors.red,
              colorBrightness: Brightness.light,
            ),
            Text("List Of Biometric : ${_availableBiometricTypes.toString()}"),
            RaisedButton(
              onPressed: _getListOfBiometricTypes,
              child: Text("List of Biometric Types"),
              color: Colors.red,
              colorBrightness: Brightness.light,
            ),
            Text("Authorized : $_authorizedOrNot"),
            RaisedButton(
              onPressed: _authorizeNow,
              child: Text("Authorize now"),
              color: Colors.red,
              colorBrightness: Brightness.light,
            ),
          ],
        ),
      ),
    );
  }
}



