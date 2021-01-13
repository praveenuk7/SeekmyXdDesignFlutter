import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  BoxDecoration decorationIcon() {
    return BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.green[300]])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: FlatButton(
                  minWidth: 40,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('images/backIcon.png')),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    hintText: 'Name, Place, Area, Thing',
                    hintStyle:
                        TextStyle(color: Colors.grey[200], fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'What are you looking for?',
                  style: TextStyle(color: Colors.black26, fontSize: 18),
                )),
//
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      decoration: decorationIcon(),
                      height: 50,
                      width: 50,
                      child: Image.asset('images/userIcon.png'),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      decoration: decorationIcon(),
                      height: 50,
                      width: 50,
                      child: Image.asset('images/clinicIcon.png'),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      decoration: decorationIcon(),
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.medical_services,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      decoration: decorationIcon(),
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.medical_services_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: double.maxFinite,
                height: 65,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'SEARCH',
                      style: TextStyle(fontSize: 18, letterSpacing: 1),
                    )))
          ],
        ),
      ),
    );
  }
}
