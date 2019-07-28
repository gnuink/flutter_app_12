import 'package:flutter/material.dart';
import 'package:flutter_app_12/reviewList.dart';

import 'description_place .dart';
import 'header.dart';

class HomeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas", descriptionDummy,5 ),
            ReviewList()

          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}