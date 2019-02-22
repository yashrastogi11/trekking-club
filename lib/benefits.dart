import 'package:flutter/material.dart';

class Benefits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Benefits"),
        elevation: 4.0,
        titleSpacing: 10.0,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          Text(
            "Benefits of Trekking",
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
              "There’s nothing more satisfying and refreshing than spending time in the wilderness with nothing but your back pack. From quiet moments of self reflection, invigorating sights and challenging yourself in nature, trekking provides a number of benefits; both physical and mental.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),

          Container(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Text(
              "\n 1. Trekking improves our physical health. \n 2. Trekking help us to reduce stress - a recent study found that that exposure to nature can counteract the negative effects of stress and anxiety. \n 3. Away from all the social media, hustling and bustling lifestyle, television and world news; this silence bliss experienced by trekking will automatically provide your mind a sense of relaxation and calmness; this state of mind enable you to think more wisely about you and people around you. \n 4. Leaving home for a trek gives you the chance to take a break from work and other obligations. Instead of facing the endless traffic and crowds at your favourite shopping centre, you’ll be facing tall mountains and rushing rivers. \n 5. Trekking improves the health condition of our heart ,that is because during trekking our heart has to pump more oxygen and work harder to cope with the demand of oxygen in the mountain. \n 6. Trekking is not only about walking for hours, but one can learn immensely if one can consciously observe environment and community around oneself at that time. \n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),

        ],
      ),
    );
  }
}
