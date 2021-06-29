

import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'Api.dart';
import 'EasySessionWidget.dart';
import 'classmodels/EasySession.dart';

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
              print(snapshot.data);
              if (snapshot.hasData) {
                return TopicsList(easySessions: snapshot.data,customfunction:this.customfunction);
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
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
  ItemPositionsListener.create();
  int updateValue;
  int saved = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: 450,

          child: Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: easySessions.length,
                scrollDirection: Axis.vertical,
                //itemScrollController: itemScrollController,
                //itemPositionsListener: itemPositionsListener,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      
                      EasySessionWidget(easySession: easySessions[index],customfunction: this.customfunction,session:easySessions)
                    ],
                  );
                }),
          ),
        ),
      ],
    );
  }

/*
   positions_finding(ValueListenable<Iterable<ItemPosition>> itemPositions) {
     int first_item = 0;
     var positions = itemPositions.value;
     if (positions.isNotEmpty) {
       first_item = positions
           .where((ItemPosition position) => position.itemTrailingEdge > 0)
           .reduce((ItemPosition min, ItemPosition position) =>
       position.itemTrailingEdge < min.itemTrailingEdge ? position : min)
           .index;
       print(first_item);
       if (saved < first_item) {
         saved = first_item;
       }
     }

     return first_item;
   }
*/
}



