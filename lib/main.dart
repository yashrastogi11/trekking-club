import 'package:flutter/material.dart';
import 'package:trekking_club/about_us.dart';
import 'package:trekking_club/benefits.dart';
import 'package:trekking_club/contact.dart';
import 'package:trekking_club/fingerprint.dart';
import 'package:trekking_club/photos.dart';
import 'package:trekking_club/rating.dart';

void main() => runApp(Authenticate());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trekking',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<String> photos = [
  "images/1.jpg",
  "images/2.jpg",
  "images/3.jpg",
  "images/4.jpg"
];

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  AnimationController animController;
  Animation carouselAnimation;

  @override
  void initState() {
    super.initState();

    

    animController = new AnimationController(duration: Duration(seconds: 12), vsync: this);

    carouselAnimation = IntTween(begin: 0, end: photos.length - 1).animate(animController)
      ..addListener(() {
        setState(() {
          photoIndex = carouselAnimation.value;
        });
      });

    animController.repeat();

    
    
  }

  @override
  void dispose() {
    super.dispose();
    animController.dispose();
  }

  int photoIndex = 0;


  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : photos.length - 1;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("VIT Trekking Club"),
        elevation: 4.0,
        titleSpacing: 10.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,

                image: DecorationImage(
                  image: AssetImage("images/5.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            ListTile(
              title: Text("Photos",
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_upward),

              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).canPop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Photos()
                ));
              },
            ),

            ListTile(
              title: Text("Benefits",
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_upward),

              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).canPop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Benefits()
                ));
              },
            ),

            ListTile(
              title: Text("About Us",
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_upward),

              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).canPop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                  AboutUs()
                ));
              },
            ),

            ListTile(
              title: Text("Contact Us",
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              trailing: Icon(Icons.arrow_upward),

              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).canPop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                  Contact()
                ));
              },
            ),

            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),

          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height/3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                        ),
                        onTap: _nextImage,
                      ),
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width/2,
                          color: Colors.transparent,
                        ),
                        onTap: _previousImage,
                      ),
                      Positioned(
                        top: 215.0,
                        left: 5.0,
                        child: Rating(photoIndex: photoIndex),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    "VIT Trekking Club",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                  SizedBox(
                    height: 0.0,
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Text(
                      "\n Trekking means a journey to be undertaken on foot in areas where means of transport(vehicle) is generally not available. Trekking is not mountaineering but just days of walking, along with adventure. Trekking is joyful walking experience which is combination of hiking and walking activity in which one can take multi day expedition enjoying scenery of rural regions, rugged hills & territory, valleys and forts.\n\n Trekking is similar to Meditation. When you climb up to a mountain peak, it somehow calms you down. You are with yourself for that brief moment and there is no other feeling that can match that calmness and nearness to oneself.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }


}
