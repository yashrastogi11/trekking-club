import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  void _showTelephone() {
    _launch('tel:8094696587');
  }

  void _showFacebook() {
    _launch('https://www.facebook.com/VitTrekkingClub');
  }

  void _showInstagram() {
    _launch('https://www.instagram.com/vittrekkingclub/');
  }

  void _showEmail() {
    _launch('mailto:yashrastogi11@gmail.com');
  }

  void _launch(String urlString) async {
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else {
      throw 'Could not launch Url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
        elevation: 4.0,
        titleSpacing: 10.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/7.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            "Get in touch with us",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.all(20.0),
                icon: Icon(Icons.call),
                onPressed: _showTelephone,
                color: Colors.black,
                iconSize: 40.0,
                tooltip: "Make a Call",
                splashColor: Colors.lightGreen[200],
              ),
              SizedBox(
                width: 15.0,
              ),
              IconButton(
                padding: EdgeInsets.all(20.0),
                icon: Icon(Icons.email),
                onPressed: _showEmail,
                color: Colors.black,
                iconSize: 40.0,
                tooltip: "Send an Email",
                splashColor: Colors.lightGreen[200],
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.all(20.0),
                icon: Image.asset("images/facebook.png"),
                onPressed: _showFacebook,
                iconSize: 40.0,
                tooltip: "Connect on Facebook",
                splashColor: Colors.blue[300],
              ),
              SizedBox(
                width: 15.0,
              ),
              IconButton(
                padding: EdgeInsets.all(20.0),
                icon: Image.asset("images/instagram.png"),
                onPressed: _showInstagram,
                iconSize: 40.0,
                tooltip: "Follow on Instagram",
                splashColor: Colors.pink[300],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
