import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xd_design_seekmy/View/1-1.dart';
import 'package:xd_design_seekmy/View/1-2.dart';
import 'package:xd_design_seekmy/View/SearchPage.dart';
import 'package:xd_design_seekmy/View/commentPage.dart';
import 'package:xd_design_seekmy/View/heartPage.dart';

import 'calendarPage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

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
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: TabBarView(
                    controller: controller,
                    children: [HeartPage(), CalendarPage(), CommentPage()],
                  ),
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
                            MaterialPageRoute(builder: (context) => Page2()));
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
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Hi Allwin, Good Morning!',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 25,
            left: 25,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: TabBar(
                indicatorColor: Colors.grey,
                controller: controller,
                tabs: [
                  Tab(
                    child: Image.asset('images/heartbeat.png'),
                  ),
                  Tab(
                    child: Image.asset('images/calender.png'),
                  ),
                  Tab(
                    child: Image.asset('images/comment.png'),
                  )
                ],
              ),
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
