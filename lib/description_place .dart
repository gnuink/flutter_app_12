import 'package:flutter/material.dart';
import 'package:flutter_app_12/reviewList.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  String descriptionPlace;
  num    numStars;
  List<Widget>   starsList = [];

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.numStars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final int fullStars = (numStars).floor();
    final bool hasHalfedStars = numStars%1 != 0 ? true : false;
    final int totalStars = (numStars).round();
    final star_empty = Container(
      margin: EdgeInsets.only(
          top:323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C716),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
          top:323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C716),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
          top:323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C716),
      ),
    );

    for(var i=0;i<fullStars;i++){
      starsList.add(star);
    }

    if(hasHalfedStars){
      starsList.add(star_half);
    }

    for(var i = totalStars; i < 5; i++){
      starsList.add(star_empty);
    }

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 320.0,
              left: 20.0,
              right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
            children: starsList
        )
      ],
    );

    final descripction_text = Container(
        margin: EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            right: 20.0,
            bottom: 5.0
        ),
        child: Text(
          descriptionPlace,
          style: TextStyle(
            fontFamily: "Lato",
              fontSize: 12.0,
              color: Color(0xFF6D6E71)
          ),
          textAlign: TextAlign.justify,

        )
    );

    final _description_place = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        descripction_text,
        ButtonPurple("Navigate"),

        new ReviewList()
      ],
    );

    return _description_place;
  }

}