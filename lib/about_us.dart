import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        elevation: 4.0,
        titleSpacing: 10.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/3.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/6.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            "Get to know more about us",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Text(
              "Why do we trek? For fun? Of course; but to challenge ourselves as well. We challenge ourselves - not so that we become arrogant but be humble; not to succeed but to learn; not to show off but to look inside. As Sir Edmund Hillary said \"It is not the mountain we conquer, but ourselves.\" We don't trek because we can; we trek because we want to. \n\n Just like after doing a lot of hard work, some people enjoy what they get from it. Similarly, after completing a trek, you feel the same way. You do a lot of hardwork while climbing a mountain and then once it's done you enjoy the view, you get satisfied about the thing you have done. Also you feel confident about life. While trekking you have to face a lot of challenges. Once you face them and over come them successfully you feel like you have achieved something in life. That is the thing what trekking gives you. It is like a drug which is good for your health. On top of everything you get mentally satisfied which is the best thing happening with you.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
