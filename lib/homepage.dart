import 'package:flutter/material.dart';
import './inside_cnc1.dart';
import './inside_cnc2.dart';

const MaterialColor grey = const MaterialColor(
  0xFF737373,
  const<int, Color>{
    50: const Color(0xFF737373),
    100: const Color(0xFF737373),
    200: const Color(0xFF737373),
    300: const Color(0xFF737373),
    400: const Color(0xFF737373),
    500: const Color(0xFF737373),
    600: const Color(0xFF737373),
    700: const Color(0xFF737373),
    800: const Color(0xFF737373),
    900: const Color(0xFF737373),
  },
);

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomepageState();
  }
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Center(
        child: ListView(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Opacity(opacity: 0.5),
            SizedBox(
              height: 17,
            ),
            new FlatButton(
              color: Color(0xFF545454),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new Inside1();
                    }));
              },
              textColor: Colors.white,
              padding:
              EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
              child: Text(
                'CNC lathe machine 1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            new FlatButton(
              color: Color(0xFF545454),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new Inside2();
                    }));
              },
              textColor: Colors.white,
              padding:
              EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
              child: Text(
                'CNC lathe machine 2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
          ],
        ),
      ),
    );
  }
}
