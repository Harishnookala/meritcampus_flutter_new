import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/show_topics.dart';
import 'package:meritcampus_flutter_new/topic_id.dart';
import 'package:meritcampus_flutter_new/welcome.dart';
import 'Topic_Widget.dart';
import 'package:meritcampus_flutter_new/main.dart';

import 'class_Models/PlanGroup.dart';
import 'Api.dart';
import 'class_Models/Topic.dart';

class BuildDrawer extends StatefulWidget {
  String title;
  final int topic_Id;
  BuildDrawer({
    this.topic_Id,
    this.title,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BuildState(
      topic_Id: this.topic_Id,
      title: this.title,
    );
  }
}

class BuildState extends State<BuildDrawer> {
  @override
  void dispose() {
    print("Disposing second route");
    super.dispose();
  }

  BuildState({
    this.topic_Id,
    this.title,
  });
  int topic_Id;
  String title;
  TopicWidgetState enter = new TopicWidgetState();

  bool pressed = false;
  int selectedTopic = 0;
  int id = 0;
  int subTopicId = 0;

  List<bool> isSelected = List.generate(23, (_) => false);
  @override
  Widget build(BuildContext context) {
    List<PlanGroup> group = Api.loadGroups(context);
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(right: 1.3, bottom: 12.3),
            child: new ListView(
              shrinkWrap: true,
              children: <Widget>[
                SingleChildScrollView(
                  child: ListView.builder(
                      controller: ScrollController(initialScrollOffset: 0.0),
                      shrinkWrap: true,
                      itemCount: group.length,
                      itemBuilder: (context, check) {
                        return new Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  child: ListTile(
                                    title: Text(
                                      group[check].groupName,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  width: 330,
                                  alignment: Alignment.topLeft,
                                ),
                                InkWell(
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.deepOrange,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      test(check);
                                    });
                                  },
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            buildTopics(check, group)
                          ],
                        );
                      }),
                )
              ],
            )));
  }

  test(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];

      pressed = isSelected[index];
    });
    return pressed;
  }

  buildTopics(
    int check,
    List<PlanGroup> group,
  ) {
    return isSelected[check]
        ? ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(initialScrollOffset: 0.0),
            itemCount: group[check].children.length,
            itemBuilder: (context, index) {
              return new Column(
                children: <Widget>[
                  buildSubList(check, index, group),
                ],
              );
            },
          )
        : Container();
  }

  buildSubList(int check, int index, List<PlanGroup> group) {
    return Column(children: [
      FlatButton(
          child: Container(
            margin: EdgeInsets.only(left: 12.3),
            child: ListTile(
              title: Text(
                group[check].children[index].topicTitle,
                style: TextStyle(fontSize: 17, color: Colors.blueAccent),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          onPressed: ()  {
            id = group[check].children[index].topicId;

          })
    ]);
  }


   topic(int id) {

  }

}

//---END OF DRAWER FILE-----------------
