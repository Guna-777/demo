import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './db.dart';
import 'cl.dart';
enum SingingCharacter { one,two }
enum SingingCharacter1 {one1,two1}
String ans1='Good',ans2a='Oil leakage',ans2b='Speed reduction',ans2c='Sound pollution',ans2d='Stops working in between',ans3='above are the issues' ;

class Daily extends StatefulWidget {
  final bool edit;
  final Checklist checklist;
  Daily(this.edit, {this.checklist})
      : assert(edit == true || checklist == null);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DailyState();
  }
}

class _DailyState extends State<Daily> {
  final _formKey = GlobalKey<FormState>();
  SingingCharacter _character = SingingCharacter.one;
  SingingCharacter1 _character1= SingingCharacter1.one1;
  int flag,flag1;
  bool oilVal = false;
  bool spdVal = false;
  bool sndVal = false;
  bool stpVal = false;
  @override
  String radioItem = '';

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.grey,
      ),
      darkTheme: ThemeData.dark(),
      home: SafeArea(
        child: new Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
//            elevation: 0.0,
              title: Text(
                'Tool Track',
//          textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
//              centerTitle: true,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
//                  padding: const EdgeInsets.all(10.0),
                  padding:EdgeInsets.fromLTRB(0.0,10.0,0.0, 0.0),
                  child: Text(
                    'Daily Checklist',
//                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xFF545454),
                      border: Border.all(color: Color(0xFF545454), width: 8),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '1.To check Radiator fins',
//                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                        ),
                        RadioListTile(
                          groupValue: radioItem,
                          activeColor: Colors.white,
                          title: Text('Good',
                            style: TextStyle(
//                            fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                              color: Colors.white,
                            ),
                          ),
                          value: 'Item 1',
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                              ans1='Good';
                            });
                          },
                        ),
                        RadioListTile(
                          groupValue: radioItem,
                          activeColor: Colors.white,
                          title: Text('Bad',
                            style: TextStyle(
//                            fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                              color: Colors.white,
                            ),
                          ),
                          value: 'Item 2',
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                              ans1='Bad';
                            });
                          },
                        ),
                        RadioListTile(
                          groupValue: radioItem,
                          activeColor: Colors.white,
                          title: Text('Moderate',
                            style: TextStyle(
//                            fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                              color: Colors.white,
                            ),
                          ),
                          value: 'Item 3',
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                              ans1='Moderate';
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xFF545454),
                      border: Border.all(color: Color(0xFF545454), width: 8),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '2. Problems faced at the time of working\n',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Checkbox(
                              value: oilVal,
                              activeColor: Colors.white,
                              checkColor: Colors.black54,
                              onChanged: (bool value) {
                                setState(() {
                                  oilVal = value;
                                  ans2a="Oil leakage";
                                });
                              },
                            ),
                            Text("Oil leakage",
                              textAlign: TextAlign.left,
                              style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              value: spdVal,
                              activeColor: Colors.white,
                              checkColor: Colors.black54,
                              onChanged: (bool value) {
                                setState(() {
                                  spdVal = value;
                                  ans2b="Speed reduction";
                                });
                              },
                            ),
                            Text("Speed reduction",
                              textAlign: TextAlign.left,
                              style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              value: sndVal,
                              activeColor: Colors.white,
                              checkColor: Colors.black54,
                              onChanged: (bool value) {
                                setState(() {
                                  sndVal = value;
                                  ans2c="Sound pollution";
                                });
                              },
                            ),
                            Text("Sound pollution",
                              textAlign: TextAlign.left,
                              style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              value: stpVal,
                              activeColor: Colors.white,
                              checkColor: Colors.black54,
                              onChanged: (bool value) {
                                setState(() {
                                  stpVal = value;
                                  ans2d="Stops working in between";
                                });
                              },
                            ),
                            Text("Stops working in between",
                              textAlign: TextAlign.left,
                              style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xFF545454),
                      border: Border.all(color: Color(0xFF545454), width: 8),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Other issues with the tool\n',
//                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                        ),
                        TextField(
                          style: TextStyle(color: Colors.white, fontSize: 19.0,),
                          minLines: 4,
                          maxLines: 10,
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your problems here',
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(0)),
                                borderSide: BorderSide(width: 1,color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              borderSide: BorderSide(width: 1,color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
                  //width: screenWidth/2,
                  color:Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('SAVE',
                            style:TextStyle(
                              fontSize:20.0,
                              color:Colors.white,
                            ),
                          ),
                        ),
                        onPressed: () {
                          ChecklistDatabaseProvider.db.insertChecklist(new Checklist(
                            name:'CNC Lathe machine',
                            ans1: ans1,
                            ans2a: ans2a,
                            ans2b: ans2b,
                            ans2c: ans2c,
                            ans2d: ans2d,
                            ans3:ans3,
                          ));
                        },

                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
