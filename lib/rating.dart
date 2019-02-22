import 'package:flutter/material.dart';
import 'package:trekking_club/SelectedPhoto.dart';
import 'package:trekking_club/main.dart';

class Rating extends StatelessWidget {

  final int photoIndex;

  Rating({this.photoIndex});

  @override
  Widget build(BuildContext context) {
    if (photoIndex == 0)
    {
      return Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star_half,
            color: Colors.amber,
          ),
          Icon(
            Icons.star_border,
            color: Colors.amber,
          ),
          SizedBox(width: 30.0),
          Text(
            '3.5',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 4.0),
          SelectedPhoto(photoIndex: photoIndex, numberOfDots: photos.length)
        ],
      );
    }

    if (photoIndex == 1)
    {
      return Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star_border,
            color: Colors.amber,
          ),
          Icon(
            Icons.star_border,
            color: Colors.amber,
          ),
          SizedBox(width: 30.0),
          Text(
            '3.0',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 4.0),
          SelectedPhoto(photoIndex: photoIndex, numberOfDots: photos.length)
        ],
      );
    }

    if (photoIndex == 2)
    {
      return Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star_half,
            color: Colors.amber,
          ),
          SizedBox(width: 30.0),
          Text(
            '4.5',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 4.0),
          SelectedPhoto(photoIndex: photoIndex, numberOfDots: photos.length)
        ],
      );
    }

    if (photoIndex == 3)
    {
      return Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          SizedBox(width: 30.0),
          Text(
            '5.0',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 4.0),
          SelectedPhoto(photoIndex: photoIndex, numberOfDots: photos.length)
        ],
      );
    }

    else
      return Container();


  }

}
