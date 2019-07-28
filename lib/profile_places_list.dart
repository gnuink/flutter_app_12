/** profile_places_list.dart **/
import'package:flutter/material.dart';
import'profile_places.dart';

class ProfilePlacesList extends StatelessWidget{
@override
Widget build(BuildContext context) {
  // TODO: implement build
  return Container(
      margin: EdgeInsets.only(
          top: 280
      ),
      child: ListView(
        children: <Widget>[
          ProfilePlaces(
              "assests/img/people.jpg",
              "Paraíso Sisal","Hermosas playas ubicadas en el \nhermoso estado de Yucatán",
              "Distancia 64 kms."
          ),
          ProfilePlaces(
              "assests/img/people.jpg",
              "Puerto Progreso","Hermosas playas ubicadas en el \nhermoso estado de Yucatán",
              "Distancia 32 kms."
          ),
          ProfilePlaces(
              "assests/img/people.jpg",
              "Nevado de Toluca","Ubicadas en el estado de Toluca a mas de 3000 km de altura",
              "Distancia 3000 kms."
          ),
          ProfilePlaces(
              "assests/img/people.jpg",
              "Cañon del Sumidero","Ubicado en el estado de Chiapas, \nconsiderado patrimonio de la humanidad.",
              "Distancia 1560 kms."
          ),
        ],
      )
  );
}
}