import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

String pathImage = "assests/img/people.jpg";

String name = "Varuma Yasas";
String details = "1 rewiew 5 photos";
String comment = "There is an amazing place in Sri Lanka";

ReviewList();

@override
Widget build(BuildContext context) {
  // TODO: implement build
  return Column(
    children: <Widget>[
      Review(pathImage, name, details, comment),
      Review(pathImage, name, details, comment),
      Review(pathImage, name, details, comment)
    ],
  );
}

}

