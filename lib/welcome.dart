
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/sessions.dart';

import 'MainDrawer.dart';
import 'Topic_Widget.dart';
//------------welcome.dart---------

class App extends StatefulWidget {
  String title;
  App({this.title});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApp_state(title: this.title);
  }
}

class MyApp_state extends State<App> {
  String title;
  MyApp_state({this.title});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> end_drawer = new GlobalKey<ScaffoldState>();

  int value = 0;
  updatescore(newValue) {
    setState(() {
      value = value + newValue;
    });
  }

  _getCustomAppBar(context) {
    var talent_prize = 0;
    return PreferredSize(
      preferredSize: Size.fromHeight(135),
      child: Container(
        color: Colors.lightGreenAccent,
        margin: const EdgeInsets.only(top: 12.3),
        child: Column(
          children: [
            Card(
              color: Colors.lightGreenAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 12.3),
                  ),
                  IconButton(
                      iconSize: 60,
                      //alignment: Alignment.center,

                      icon: Image.asset(
                        'Images/drawer_icon.png',
                      ),
                      onPressed: () => _scaffoldKey.currentState.openDrawer()),
                  Container(
                    margin: const EdgeInsets.only(left: 20.5, right: 10.3),
                    child: const Image(
                      height: 33,
                      width: 56,
                      image: AssetImage(
                        'Images/trophy_icon.png',
                      ),
                    ),
                  ),
                  Container(
                      child: Text(
                    '$value',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  )),
                  //IconButton
                  FlatButton(
                      padding: const EdgeInsets.only(top: 2.6),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Session()),
                        );
                      }, //icon:
                      child: Icon(
                        Icons.list,
                        color: Colors.white,
                        size: 45,
                      )),
                  Container(
                    // margin: EdgeInsets.only(left: 13.5)
                    child: IconButton(
                        onPressed: () =>
                            _scaffoldKey.currentState.openEndDrawer(),
                        iconSize: 30,
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 35,
                        )),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.43, //vam
                  child: Text(
                    'Talent Prize ₹' + talent_prize.toString().padRight(4, '0'),
                    style: const TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  //  margin:EdgeInsets.only(: 12.6,),
                  child: const Text(
                    'Max ₹ 20 for free users.',
                    style: const TextStyle(color: Colors.white, fontSize: 19),
                    //overflow: TextOverflow.ellipsis,
                    // textScaleFactor: 1.6,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          key: _scaffoldKey,
          appBar: _getCustomAppBar(context),
          drawer: Drawer(
            child: MainDrawer(),
          ),
          body: Container(
            child: ListView(children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.78,
                    child: show_topics(
                      customfunction: updatescore,
                      title: title,
                    ),
                  ),
                  Text("Hai")
                ],
              )
              //margin: EdgeInsets.only(bottom: 12.3),
            ]),
          )),

      //body:Text('Hello topic screen'),
    );
  }
}

//-s------------ Score widget
