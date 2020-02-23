class carouselSlider{
  String imageURL;
  String place_name;
  String info;
  String rating;
  String days;
  String num;
  carouselSlider({this.imageURL,this.rating,this.info,this.place_name,this.days,this.num});
}
List<carouselSlider> slist=<carouselSlider>[
  carouselSlider(imageURL:"images/image1.jpg",place_name: "Vienna, Austria",info:"It is an importent metropolis located",days: "5",num: "365",rating: "4.5" ),
  carouselSlider(imageURL:"images/image2.jpg",place_name: "New York, USA",info:"New York City (NYC),officially known",days: "2",num: "290" ,rating: "5.0"),
 carouselSlider(imageURL:"images/image3.jpg",place_name: "Paris, France",info:"Paris has been one of Europe",days: "6",num: "402" ,rating: "4.7"),
  carouselSlider(imageURL:"images/image4.jpg",place_name: "Venice, Italy",info:"Venice, is a city in northeastern Italy",days: "7",num: "950" ,rating: "4.9"),
];