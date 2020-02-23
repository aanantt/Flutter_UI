import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Model/CarouselSlider.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/final%20screen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Carousel(),
    );
  }
}

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int cur_index = 0;
  bool isChecked = false;
  carouselSlider slider ;
  Widget indicator(i) {
    return Container(
      child: Container(
        height: i == cur_index ? 15 : 10,
        width: i == cur_index ? 15 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: i == cur_index ? Colors.white : Colors.grey[350],
          border: Border.all(
              width: 3,
              color: i == cur_index ? Colors.blueAccent : Colors.grey[350]),
        ),
      ),
    );
  }

  Widget CarouselContainer(index) {
    slider=slist[index];
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 30),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    slider.imageURL,
                  ),
                  fit: BoxFit.cover),
              color: Colors.white30,
              borderRadius: BorderRadius.all(Radius.circular(7.0))),
        ),
        Positioned(
          left: 15,
          top: 185,
          right: 15,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1, 4),
                          blurRadius: 10)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(7.0))),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height * 0.070,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 7, top: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Hero(
                              tag:slider.place_name,
                              child: Text(slider.place_name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              slider.info,
                              style: TextStyle(
                                  fontSize: 11,
                                  textBaseline: TextBaseline.alphabetic),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  Text(
                                    "Score ${slider.rating} ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.history,
                                    size: 20,
                                  ),
                                  Text(
                                    "${slider.days} Days",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_drop_down_circle,
                                    size: 20,
                                  ),
                                  Text(
                                    slider.num,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.07),
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Beautiful world",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Partly Cloud, 23 C",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  autoPlay: false,
                  reverse: false,
                  height: MediaQuery.of(context).size.height * 0.40,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 200),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: Duration(seconds: 10),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      cur_index = index;
                      print(cur_index);
                    });
                  },
                  autoPlayCurve: Curves.easeOutExpo,
                  items: <Widget>[
                    CarouselContainer(0),
                    CarouselContainer(1),
                    CarouselContainer(2),
                    CarouselContainer(3),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    indicator(0),
                    SizedBox(
                      width: 6,
                    ),
                    indicator(1),
                    SizedBox(
                      width: 6,
                    ),
                    indicator(2),
                    SizedBox(
                      width: 6,
                    ),
                    indicator(3),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Recommend",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "View All >",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      )
                    ],
                  )),
              ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: klist.length,
                  // ignore: missing_return
                  itemBuilder: (BuildContext context, int index) {
                    Recommend rc ;
                    rc=klist[index];
                    return GestureDetector(
                      onTap:() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ( context) => FinalScreen( recommend: rc,)));
                      } ,
                      child: Card(
                        elevation: 1.5,
                        child: Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.only(bottom: 10, top: 3),
                            child: Row(
                              children: <Widget>[
                                Hero(
                                  tag:rc.imageURL,
                                  child: Container(
                                    height: 130.0,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(
                                        offset: Offset(1,5),
                                        blurRadius: 8,color: Colors.grey
                                      )],
                                      borderRadius: BorderRadius.all(Radius.circular(8),),
                                      image: DecorationImage(
                                        image: AssetImage(rc.imageURL),fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Wrap(
//                                    alignment: WrapAlignment.spaceEvenly,
                                      verticalDirection: VerticalDirection.down,
                                      spacing: 15.0,
                                      runSpacing: 10.0,
                                      direction: Axis.vertical,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              rc.place_name,
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    rc.favourite =
                                                        !rc.favourite;
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: rc.favourite
                                                      ? Colors.red
                                                      : Colors.grey[350],
                                                ))
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0.0),
                                              child: RatingBar(
                                                initialRating:
                                                    double.parse(rc.rating),
                                                minRating: 1,
                                                itemSize: 20,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                  size: 1.0,
                                                ),
                                              ),
                                            ),
                                            Text("(${rc.rating} )")
                                          ],
                                        ),
                                        Text(
                                          rc.info,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    );
                  })
            ],
          ),
        ],
      ),
    );
  }
}
