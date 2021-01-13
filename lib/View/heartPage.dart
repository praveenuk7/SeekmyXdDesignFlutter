import 'package:flutter/material.dart';

class HeartPage extends StatefulWidget {
  @override
  _HeartPageState createState() => _HeartPageState();
}

class _HeartPageState extends State<HeartPage> {
  int steps = 4015;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//          SizedBox(
//            height: 50,
//          ),
            Text(
              'Highlights',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 134,
              width: 277,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300], spreadRadius: 2, blurRadius: 1)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/bluecircle.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Daily Distance Meter',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.directions_walk,
                        size: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Text(
                              steps.toString(),
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('6000',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.green,
                      inactiveTrackColor: Colors.grey,
                      trackShape: RectangularSliderTrackShape(),
                      trackHeight: 10.0,
                      thumbColor: Colors.green,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 1.0),
                      //overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                    ),
                    child: Slider(
                        value: steps.toDouble(),
                        min: 0,
                        max: 6000,
                        //mouseCursor: null,
                        onChanged: (double val) {
                          setState(() {
                            steps = val.round();
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
//                      Text(
//                        'steps',
//                        style: TextStyle(fontSize: 15),
//                      ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('steps',
                            style: TextStyle(fontSize: 20, color: Colors.grey))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
