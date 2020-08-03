import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './inside_cnc1.dart';
import './inside_cnc2.dart';
import './history.dart';

void main() => runApp(MyApp());
String search_ans=null;
var _controller = TextEditingController();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(25.0),
                        child: TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () => _controller.clear(),
                                icon: Icon(Icons.clear,color: Colors.grey),
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search, color: Colors.grey),
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15.0),
                              hintText: 'Search for tools',
                              hintStyle: TextStyle(color: Colors.grey)
                          ),
                          onChanged: (String text)
                          {
                            setState(() {
                              search_ans=text;
                              search_ans=search_ans.toLowerCase();
                              if((search_ans=='cnc lathe machine')|(search_ans=='cnc')|(search_ans=='cnc machine')|(search_ans=='cncmachine')|(search_ans=='lathe')|(search_ans=='cnclathe')|(search_ans=='cnc lathe'))
                              {
                                //search_ans=null;
                                Navigator.of(context).push(
                                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                                    return new Inside1();
                                  },
                                  ),
                                );
                              }
                              else if((search_ans=='exhaust fan')|(search_ans=='exhaust')|(search_ans=='exhaustfan')|(search_ans=='fan'))
                              {
                                //search_ans=null;
                                Navigator.of(context).push(
                                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                                    return new Inside2();
                                  },
                                  ),
                                );
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Colors.orange,
                                    style: BorderStyle.solid,
                                    width: 3.0))),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('TOOL TRACK',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.bold)),
                                Text('TRACK YOUR TOOL',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0),
                      height: 150.0,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _foodCard(),
                          SizedBox(width: 10.0),
                          _foodCard1(),
                          SizedBox(width: 10.0),
                          _foodCard2(),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 3.0))),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 34.0,
                        ),
                        Text(
                          'Notifications',
                          style:
                              TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                        ),
                        Text(
                          'TODAY',
                          style: TextStyle(
                              fontFamily: 'Timesroman',
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
//    height: 100.0,
//    width: 225.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '\n1) Appointment with Products Manager at 4:00 PM.\n',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        '2) 500 hours checklist pending remainder for CNC Machine.\n',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            height: 1.5,
                            color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        '3) Contact technician for the transformer repair.\n',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            height: 0.75,
                            color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 3.0))),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.history,
                          color: Colors.white,
                          size: 34.0,
                        ),
                        Text(
                          'History',
                          style:
                              TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0,top:0.0,bottom:15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Click here to view history',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new History();
                      }));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _foodCard() {
    return Container(
      height: 150.0,
      width: 225.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(image: AssetImage('images/cnc.jpg'))),
            height: 125.0,
            width: 100.0,
            child: new InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new Inside1();
                }));
              },
            ),
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'CNC Lathe',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.grey,
                ),
              ),
              Text(
                'Machine',
                style: TextStyle(fontFamily: 'Quicksand', color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _foodCard1() {
    return Container(
      height: 125.0,
      width: 225.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(image: AssetImage('images/fan.jpg'))),
            height: 125.0,
            width: 100.0,
            child: new InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new Inside2();
                }));
              },
            ),
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Exhaust',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.grey,
                ),
              ),
              Text(
                'Fan',
                style: TextStyle(fontFamily: 'Quicksand', color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _foodCard2() {
    return Container(
      height: 125.0,
      width: 225.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(image: AssetImage('images/trans.jpg'))),
            height: 125.0,
            width: 100.0,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welding',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.grey,
                ),
              ),
              Text(
                'Transformer',
                style: TextStyle(fontFamily: 'Quicksand', color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
