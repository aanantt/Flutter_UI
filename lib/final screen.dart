import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Model/CarouselSlider.dart';
import 'package:flutter_app/Model/model.dart';

class FinalScreen extends StatefulWidget {
  final Recommend recommend;
  const FinalScreen({Key key,this.recommend}): super(key: key);
  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Hero(
                      tag: widget.recommend.imageURL,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.46,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  widget.recommend.imageURL,
                                )),
                            borderRadius: BorderRadius.all(Radius.circular(13))),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.40,
                      left: MediaQuery.of(context).size.width * 0.8,
                      child: FloatingActionButton(
                        elevation: 4,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                        backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: Icon(Icons.arrow_back_ios,
                          size: 30, color: Colors.white),
                    ),
                    Positioned(
                      top: 50,
                      right: 20,
                      child: Icon(Icons.bookmark_border,
                          size: 30, color: Colors.white),
                    ),
                    Positioned(
                      top: 280,
                      left: 20,
                      child: Text(
                        "2,099 Views",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            color: Colors.grey[100])
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        //margin: EdgeInsets.only(left: 0, top: 1, right: 160),
                        child: Text(
                          widget.recommend.place_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Container(
                         // margin:EdgeInsets.only(left: 0, right: 70, bottom: 2),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 24,
                                    ),
                                    Text(
                                      "Score ${widget.recommend.rating}",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.history,
                                      size: 24,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "5 Days",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.adjust,
                                      size: 22,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "365",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            color: Colors.grey[100])
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Text(
                          "Introduce",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna \naliqua. Ut enim ad minim",
                          maxLines: 5,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            color: Colors.grey[100])
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "  Travel Raiders  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "  Go Check  ",
                          style:
                              TextStyle(fontSize: 14, color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            color: Colors.grey[100])
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "  All Naratives  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "  View All  ",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
