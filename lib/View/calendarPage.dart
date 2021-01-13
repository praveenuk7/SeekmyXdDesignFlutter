import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarController _controller = CalendarController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 55, right: 10, left: 10),
        child: Column(
          children: [
            Container(
              height: 90,
              width: 312,
//            color: Colors.red,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 2, blurRadius: 2)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset('images/bluecircle.png'),
                ),
              ),
            ),
            Container(
              child: TableCalendar(
                calendarController: _controller,
                availableGestures: AvailableGestures.horizontalSwipe,
                calendarStyle: CalendarStyle(
                  todayColor: Colors.green,
                  selectedColor: Colors.redAccent,
                  weekendStyle: TextStyle(color: Colors.black),
                  outsideDaysVisible: false,
                  //markersColor: Colors.green
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
