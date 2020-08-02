import 'package:flutter/material.dart';
import './daily.dart';

class Inside2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Inside2State();
  }
}

class _Inside2State extends State<Inside2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: SafeArea(
        child: new Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
//              elevation: 0.0,
              title: Text(
                'Tool Track',
//          textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              centerTitle: true,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
//            flexibleSpace: Container(
//              decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                      begin: Alignment.topLeft,
//                      end: Alignment.bottomRight,
//                      colors: <Color>[
//                        Color(0xFF545454),
//                        Color(0xFF545454),
//                      ])),
//            ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xFF545454),
                      border: Border.all(color: Color(0xFF545454), width: 8),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: ExpansionTile(
                      title: Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
//                    backgroundColor:Colors.cyan[50],
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            '1.  Inspect and Adjust Fan Belts'
                            '\n\n2. Install a Commercial Kitchen Exhaust Fan Hinge'
                                '\n\n3. Inspect Your Electrical Wiring and Cords'
                                '\n\n4. Check That the Fan Blades Are Balanced'
                                '\n\n5. Keep Your Motor and Fan Lubricated'
                    '\n\n6. Check the Seals On Motor Covers and Air Intakes'
                    '\n\n7. Inspect For Aged Vibration Isolators'
                      '\n\n8. Check the Exterior of Your Exhaust Fan'
                      '\n\n9. Do a Quick Recheck After Any Inspection, Maintenance, or Repairs',
                            style: TextStyle(
//                  fontWeight: FontWeight.bold,
                              fontSize: 20.0,
//                    color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xFF545454),
                      border: Border.all(color: Color(0xFF545454), width: 8),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: ExpansionTile(
                      title: Text(
                        "Inspection",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
//                    backgroundColor:Colors.cyan[50],
                      children: <Widget>[
                        ListTile(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute<Null>(builder: (BuildContext context) {
                                  return new Daily();
                                }));
                          },
                          title: Text(
                            'Daily Checklist',
                            style: TextStyle(
//                  fontWeight: FontWeight.bold,
                              fontSize: 20.0,
//                    color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
//              onTap: () {
//                            Navigator.of(context).push(
//                                MaterialPageRoute<Null>(builder: (BuildContext context) {
//                                  return new Inside2();
//                                }));
//                          },
                          title: Text(
                            '500 hours Checklist',
                            style: TextStyle(
//                  fontWeight: FontWeight.bold,
                              fontSize: 20.0,
//                    color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
//                          onTap: () {
//                            Navigator.of(context).push(
//                                MaterialPageRoute<Null>(builder: (BuildContext context) {
//                                  return new Inside2();
//                                }));
//                          },
                          title: Text(
                            '1000 hours Checklist',
                            style: TextStyle(
//                  fontWeight: FontWeight.bold,
                              fontSize: 20.0,
//                    color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
