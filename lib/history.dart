import 'package:flutter/material.dart';
import './db.dart';
import './daily.dart';
import './cl.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
//this page enable to add data base to the project
int tvalue = 0;
int flag ;
bool toggleValue;

class History extends StatefulWidget {
  @override
  _History createState() => _History();
}

class _History extends State<History> {


  //int tvalue=0;
  @override
  void didUpdateWidget(History oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    setState(() {});
  }

  getFirstLetter(String title) {
    return title.substring(0, 1);
  }


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
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
//            centerTitle: true,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding:
            EdgeInsets.only(top: screenHeight / 22, left: screenWidth / 25),
            child: Text(
              'History\n',
              style: TextStyle(
                  fontSize: 22,
//                  color: Color(0xFF3B7097),
                  fontWeight: FontWeight.bold),
            ),
          ),
//          SizedBox(
//            height: 200,
//          ),

          Container(
            padding: EdgeInsets.only(top: screenHeight / 5, bottom: 50),
            child: FutureBuilder<List<Checklist>>(
              future: ChecklistDatabaseProvider.db.getAllChecklist(),
              builder:
                  (BuildContext context,
                  AsyncSnapshot<List<Checklist>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      Checklist item = snapshot.data[index];
                      return Card(
                        key: UniqueKey(),
                        child: ListTile(
                          title: Text(item.name),
                          subtitle: Text("Answer1:" +
                              item.ans1 +
                              "\n" + "Answer2:" + item.ans2a +
                              item.ans2b + item.ans2c + item.ans2d+ "\n" +
                              "Answer3:" + item.ans3 ),
                          //subtitle2:Text("inches:"+item.diameter),
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            foregroundColor: Colors.white,
                            child: Text(getFirstLetter(item.name),
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),

                          trailing: GestureDetector(
                            child:
//                            index <= 4
//                                ? (Icon(
//                              Icons.star,
//                              color: Colors.white,
//                            ))
//                                :
                            (Icon(
                              Icons.delete,
                              color: Colors.white,
                            )),
                            onTap: () {
                              ChecklistDatabaseProvider.db
                                  .deleteChecklistWithId(item.id);
                              setState(() {});
                            },
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    ),
    ),
    );
  }

}
