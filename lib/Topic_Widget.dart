
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Api.dart';
import 'EasySessionWidget.dart';
import 'class_Models/EasySession.dart';
import 'main.dart';

class show_topics extends StatefulWidget {
  final customfunction;
  String title;
 show_topics({this.customfunction,this.title});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return show_topics_State(customfunction:this.customfunction,title:this.title);
  }
}

class show_topics_State extends State<show_topics> {

  String title;
  Future<List<EasySession>> easySessions;
  @override
 int marks;
  final customfunction;
 show_topics_State({this.customfunction,this.title});
  Widget build(BuildContext context) {
    easySessions = Api.loadStudent(context);
    return Container(
        child: Center(
          child: FutureBuilder<List<EasySession>>(
            future: easySessions,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return TopicsList(easySessions: snapshot.data,customfunction:this.customfunction,title:this.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}

class TopicsList extends StatelessWidget {
  List<EasySession> easySessions;
  String title;
 final customfunction;
  TopicsList({this.easySessions,this.customfunction,this.title});

  @override
  Widget build(BuildContext context) {
    return ListView.builder( //main list view for scrolling
        itemCount: easySessions.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              EasySessionWidget(easySession: easySessions[index],customfunction: this.customfunction,title:this.title,session:easySessions)
          ],
          );
        });
  }
}


