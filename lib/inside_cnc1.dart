import 'package:flutter/material.dart';
import './daily.dart';

class Inside1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Inside1State();
  }
}

class _Inside1State extends State<Inside1> {
  @override
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
          appBar:PreferredSize(
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
                  decoration:new BoxDecoration(
                color:Color(0xFF545454),
                    border: Border.all(color:Color(0xFF545454),width:8 ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                    child: ExpansionTile(
                      title: Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
//                    backgroundColor:Colors.cyan[50],
                      children: <Widget>[
                        ListTile(
                          title: Text(
'\nBASIC CNC CHECKLIST\n\n'
'Maintenance tasks for CNC machines fall into three general categories: daily inspections, jobs'
'that need to be performed every 500 hours or every six months, and additional inspections to be done every 1000 hours'
'or every year. The daily checklist will of course be the longest one, and the one you’ll use most often. Don’t forget '
'the other checks, however, especially if your machine is running around-the-clock or for extended shifts. Five 24-hour '
'days is 121 hours, meaning that machines which are in nearly constant use could require a 500-hour inspection almost every month.'
'\n\n\nDAILY:\n\n'
'1)Check pressure – Verify that your machine is maintaining hydraulic pressure at the recommended level. Also check the pressure on the chuck.'
'\n2)Check fluids – Check the hydraulic fluid levels. Also inspect oil or lubrication levels, and ensure that there’s adequate cooling fluid.'
'\n3)Clear away built-up grime – Many CNC machines employ a cooling system, sometimes water-based; if one is used, be sure that the drains are clear. Wipe down the machine heads if needed.'
'\n4)Empty chip pan – On a CNC lathe or mill, excess trimmings frequently simply fall to the floor of the machine. Clear these away to minimise the potential of any debris interfering with the operation.'
'\n5)Clean glass and viewports – An EDM or metal lathe may include a viewport for the operator to verify the progress of the machining process. Make sure these viewports are cleaned on a daily basis.'
'\n\n\n500 HOURS:\n\n'
'1)Inspect and lubricate the chain (usually on the chip conveyer) – If your machine has a chip conveyer.'
'\n2)Inspect and clean filters on the cooling tank – Keep your cooling fluid useful for longer by regularly cleaning the filters on the coolant tank.'
'\n\n\n1000 HOURS:\n\n'
'Maintenance by a certified technician\n'
'Every six months to a year, you should have your CNC machines thoroughly inspected by a trained technician,'
'often one sent from the original manufacturer of the machine. That person can completely drain and replace the'
'hydraulic fluid, clean the coolant tank itself, and perform an inspection of the chuck, jaws, and clamps of the machine heads.'
'\n\n\nFINAL CONSIDERATIONS:\n\n'
'Much of the necessary maintenance for a CNC machine boils down to common sense. Make sure your machine is clean, or at least'
'clear from any unnecessary buildup or clutter. Check to be sure any dials or pressure gauges are within the machine’s'
'recommended limits. Get in the habit of performing these checks daily. Not only will you preserve your machine for longer, but you’ll also catch any problems quicker.'
'\nCNC maintenance doesn’t need to be hard; it does need to be performed thoroughly and regularly to get the most out of your machines.',
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
                    decoration:new BoxDecoration(
                      color:Color(0xFF545454),
                      border: Border.all(color:Color(0xFF545454),width:8 ),
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
//                    onTap: () {
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