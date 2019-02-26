import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  Widget dispPhoto(BuildContext context, path1, path2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width / 2 - 7.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              image: AssetImage(path1),
              fit: BoxFit.cover,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return Scaffold(
                  backgroundColor: Colors.blueGrey,
                  body: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(path1),
                          fit: BoxFit.contain,
                        )),
                      ),
                    ),
                  ),
                );
              }));
            },
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width / 2 - 7.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              image: AssetImage(path2),
              fit: BoxFit.fill,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return Scaffold(
                  backgroundColor: Colors.blueGrey,
                  body: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(path2),
                          fit: BoxFit.contain,
                        )),
                      ),
                    ),
                  ),
                );
              }));
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        elevation: 4,
        titleSpacing: 10,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          dispPhoto(context, "images/10.jpg", "images/11.jpg"),
          SizedBox(
            height: 5,
          ),
          dispPhoto(context, "images/12.jpg", "images/13.jpg"),
          SizedBox(
            height: 5.0,
          ),
          dispPhoto(context, "images/14.jpg", "images/15.jpg"),
          SizedBox(
            height: 5.0,
          ),
          dispPhoto(context, "images/16.jpg", "images/17.jpg"),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
