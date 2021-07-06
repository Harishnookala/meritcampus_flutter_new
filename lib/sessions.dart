import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/welcome.dart';
import 'end_drawer.dart';
import 'models/topic.dart';
import 'wrappers.dart';

import 'api.dart';
import 'models/easysession.dart';
import 'models/plangroup.dart';


class Session extends StatefulWidget{
 Topic load_topic;
 Session({this.load_topic});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SessionState(load_topic:load_topic);
  }

}
class SessionState extends State<Session> {
  @override
  void dispose() {
    print("Disposing second route");
    super.dispose();
  }

  Topic load_topic;
  SessionState({this.load_topic});
  Future<List<EasySession>> easySessions;
  List<PlanGroup> groups ;

  @override
  Widget build(BuildContext context) {
    easySessions = Api.loadStudent(context);
    groups = Api.loadGroups(context);
    return MaterialApp(
      initialRoute: '/',

      routes: {

        // When navigating to the "/" route, build the FirstScreen widget.
        '/main_screen': (context) => App(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text('Sessions and Topics',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500),),
                IconButton(icon: Icon(Icons.close),color: Colors.red,
                  iconSize: 30.6,
                  onPressed: (){
                  Navigator.pop(context);

                },),
            ],
          )
        ),
        body: Column(children: <Widget>[
          ThinAmberHeading(heading: "160+ Sessions"),
          Center(
            child: FutureBuilder<List<EasySession>>(
              future: easySessions,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SessionsProgress(easySessions: snapshot.data);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              },
            ),
          ),
          ThinAmberHeading(heading: "Topics",),
          Expanded(
            child:EndDrawer(),
          )
        ]),
      ),
      );
  }

  onitem() {
    Navigator.pop(context);
  }

}



class SessionsProgress extends StatelessWidget {
  List<EasySession> easySessions;

  SessionsProgress({this.easySessions});

  @override
  Widget build(BuildContext context) {
    List<Widget> session = [];
     for (int i = 1; i <= easySessions.length; i+=3) {
        session.add((Column(

            children: <Widget>[
              SessionBox(sessionId: i),
              SessionBox(sessionId: i + 1),
              SessionBox(sessionId: i + 2),


            ])));




    }
    return Container(
      height: MediaQuery.of(context).size.height/4.5,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        controller: ScrollController(initialScrollOffset: 2.0, keepScrollOffset: true),
        children:session,
      ),
    );
  }
}
class TopicsIndex extends StatelessWidget {
  List<PlanGroup> groups;

  TopicsIndex({this.groups});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          child: Text(
            groups[index].groupName/**/,
            style: TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.all(10),
        );
      },
      itemCount: groups.length,
    );
  }
}
class SessionBox extends StatelessWidget {
  int sessionId = 0;

  SessionBox({this.sessionId});

  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var fontSize = 14.0;
    switch (rng.nextInt(4)) {
      case 1:
        fontSize = 10.0;
        break;
      case 2:
        fontSize = 20.0;
        break;
      case 3:
        fontSize = 27.0;
        break;
    }

    return new Container(
        margin: EdgeInsets.all(4),
        width: 70,
        decoration: BoxDecoration(
            color: Colors.white54,
            border: Border.all(width: 3.0, color: Colors.green)),
        child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
          Container(
              color: Colors.greenAccent,
              child: Center(
                  child: Text(
                    "",
                    style: TextStyle(fontSize: fontSize, color: Colors.greenAccent),
                  ))),
          Center(
              child: Padding(
                  padding: EdgeInsets.all(9),
                  child: Text(
                    (sessionId  ).toString(),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )))
        ]));
  }
}


