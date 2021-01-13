import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xd_design_seekmy/View/1-1.dart';
import 'package:xd_design_seekmy/View/SearchPage.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.greenAccent, Colors.green[300]]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                      minWidth: 40,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page1()));
                      },
                      child: Image.asset(
                        'images/menuIcon.png',

                        //fit: BoxFit.cover,
                      )),
                  FlatButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPage()));
                    },
                    child: Image.asset('images/searchIcon.png'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 75, left: 10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hi Allwin, Good Morning!',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(right: 10),
                  width: 500,
                  height: 150,
                  child: Carousel(
                    dotSpacing: 15,
                    dotSize: 10,
                    dotColor: Colors.black,
                    indicatorBgPadding: 5,
                    dotBgColor: Colors.grey[100],
                    images: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset('images/bluecircle.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset('images/bluecircle.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset('images/bluecircle.png')),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 300,
            right: 25,
            left: 25,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/heartbeat.png'),
                  Image.asset('images/calender.png'),
                  Image.asset('images/comment.png')
                ],
              ),
//
              height: 86,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 2, blurRadius: 2)
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
