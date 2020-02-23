import 'package:flutter/cupertino.dart';

class Recommend{
  String place_name;
  String info;
  String rating;
  List<Recommend> data;
  bool favourite=false;
  String imageURL;
  Recommend({this.place_name,this.info,this.rating,this.data,this.favourite,this.imageURL});
}
List<Recommend> klist=<Recommend>[
  Recommend(place_name: "Vienna, Austria", info:"It is an importent metropolis\n located in the world map",rating:"4.5",favourite: false,imageURL: "images/image1.jpg"),
  Recommend(place_name: "Paris, France",info: "Paris has been one of \n Europe's major centres of finance",rating: "4.7",favourite: false,imageURL: "images/image2.jpg"),
  Recommend(place_name: "New York, USA",info: "New York City (NYC),officially \n known as the City of ",rating:"5.0" ,favourite: false,imageURL: "images/image3.jpg")
];
