import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:meritcampus_flutter_new/sessions.dart';
import 'Basic_java_program.dart';
import 'wrappers.dart';
import 'Api.dart';
import 'class_Models/Topic.dart';
import 'html_formatter.dart';
import 'dart:ui';
import 'package:responsive_widgets/responsive_widgets.dart';

class TopicWidget extends StatefulWidget {
  final int topicId;
  bool is_value;
  String title;
  TopicWidget({this.topicId, this.is_value, this.title});

  @override
  TopicWidgetState createState() {
    return TopicWidgetState(
        topicId: this.topicId, is_value: is_value, title: this.title);
  }
}

class TopicWidgetState extends State<TopicWidget> {
  List remaining_item = [];
  List main_header = [];
  final int topicId;
  int id;
  bool is_value;
  Topic load_data;
  String title;

  Topic topics;
  TopicWidgetState({this.topicId, this.is_value, this.title});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Topic>(
        future: Api.loadTopic(topicId),
        builder: (BuildContext context, snap) {

          if (snap.hasData) {
            Session(load_topic: snap.data);
            topics = snap.data;
            print(topics.title);
            return showTopic(snap.data);
          } else if (snap.hasError) {
            return Text("hide");
          }
          return Center(child: CircularProgressIndicator());
        });
  }

  showTopic(Topic topic) {
    List col = [];
    List row = [];
    String f;
    String test;
    List<Widget> children = [];
    children.add(MCBlueHeading(heading: topic.title));
    List definiton_splits =
        HtmlFormatter.split(HtmlFormatter.format(topic.definition));
    for (int i = 0; i < definiton_splits.length; i++) {
      String definition = definiton_splits[i];
      if (definition.startsWith(HtmlFormatter.open("cl"))) {
        String contain_cl = HtmlFormatter.firstBetween(definition, "cl");
        children.add(Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[JavaCode(code: contain_cl)],
          ),
        ));
      } else {
        children.add(Row(
          children: [
            ResponsiveWidgets.builder(
                height: 1920,
                width: 1080,
                child: Html(
                  data: definition,
                  style: {
                    "Html": Style(
                        //margin: EdgeInsets.only(left: 6.3)
                        )
                  },
                ))
          ],
        ));
      }
    }

    List splits = HtmlFormatter.split(HtmlFormatter.format(topic.description));
    for (int i = 0; i < splits.length; i++) {
      String split = splits[i];
      if (split.startsWith(HtmlFormatter.open("image2"))) {
        String imagePath =
            HtmlFormatter.firstBetween(split, "image2").split("^")[2];
        var image = conversion(imagePath);
        children.add(Padding(
          child: Image.network(image),
          padding: EdgeInsets.all(5.3),
        ));
      }
      if (split.startsWith(HtmlFormatter.open("cl"))) {
        String item = HtmlFormatter.firstBetween(split, "cl");
        children.add(Container(
          // margin: EdgeInsets.all(12.3),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[JavaCode(code: item)],
          ),
        ));
      }

      if (split.startsWith(HtmlFormatter.open("table"))) {
        if (split.contains("Operator Group")) {
          List value = get_header(split);

          children.add(values_add(value));
          break;
        }
        if (split.contains("<th>")) {
          String table_convert = HtmlFormatter.format(split);
          children.add(Container(child: scroll_table(table_convert)));
        } else {
          String table = split.replaceAll(
              RegExp(
                r'[0-9]',
              ),
              '');
          List get_head = get_table(split);
          int count = get_head[0].length - 1;
          children.add(Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: count <= 3 ? 400 : 900,
                child: Html(
                  data: table,
                  style: {
                    "tr": Style(
                      border: Border.all(color: Colors.blueAccent, width: 1.2),
                      padding: EdgeInsets.all(20.4),

                    ),
                    "td": Style(
                        // textDecorationThickness: 2.3,
                        height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.all(12.3),
                        border: Border.all(color: Colors.blue)),
                    "a": Style(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        textDecoration: TextDecoration.none)
                  },
                ),
              ),
            ),
          ));
        }
      } else if (split.startsWith(HtmlFormatter.open("inprogram"))) {
        children.add(
          JavaExampleProgram(
            programId:
                int.parse(HtmlFormatter.firstBetween(split, "inprogram")),
            is_value: is_value,
          ),
        );
      } else {
        children.add(
          Container(
              alignment: Alignment.topLeft,
              child: FractionallySizedBox(child: Html(data: split))),
        );
      }
    }

    return Column(children: children);
  }

  normal_table(List value) {
    return new Container(
      child: ListView.builder(
          itemCount: value.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return Padding(
                padding: EdgeInsets.only(left: 5.3, right: 5.3),
                child: Table(
                  border: TableBorder.all(
                    color: Colors.blueAccent,
                    width: 1.6,
                    style: BorderStyle.solid,
                  ),
                  children: [
                    TableRow(children: [
                      for (int j = 0; j < value[index].length - 1; j++)
                        Container(
                            height: 35.3,
                            child: Center(
                              child: Text(
                                value[index][j].toString().trim(),
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            )),
                    ]),
                  ],
                ));
          }),
    );
  }

  Widget scroll_table(String table) {
    print(table);
    int count = header(table);
    double width = count * 210.3;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
       width: width,
        child: Html(
          data: table.trim(),
          style: {
            "table": Style(
                display: Display.INLINE_BLOCK,
                border: Border.all(color: Colors.greenAccent, width: 1.6)
            ),
            "th": Style(
              padding: EdgeInsets.fromLTRB(11.3, 12.0, 1.6,12.3),
              color: Colors.orangeAccent,
              letterSpacing: 1.5,
              border: Border(
                left: BorderSide(color: Colors.greenAccent, width: 1.3),
                // bottom: BorderSide(color: Colors.greenAccent, width: 2.3),
              ),
              fontSize: FontSize.large,
            ),
            "td": Style(
              padding: EdgeInsets.fromLTRB(15.3, 15.3, 15.3, 12.3),
              border: Border(
                top: BorderSide(
                    color: Colors.greenAccent, style: BorderStyle.solid),
              ),
            ),
            "tr": Style(
                border: Border(
                    left: BorderSide(
                      color: Colors.greenAccent,
                    ),
                    top: BorderSide(color: Colors.greenAccent),
                    right: BorderSide(color: Colors.greenAccent),
                    bottom: BorderSide(color: Colors.greenAccent)),
                fontSize: FontSize.medium,
            ),
            "strong": Style(
                fontSize: FontSize.medium,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent)
          },
        ),
      ),
    );
  }

  List get_table(String split) {
    List item = new List();
    List get = new List();
    String tag = HtmlFormatter.firstBetween(split, "table");
    item.add(tag.split("</tr>"));
    for (int i = 0; i < item[0].length - 1; i++) {
      String data = item[0][i].toString().replaceAll("<tr>", "").trim();
      data = data.replaceAll("<td>", "").trim();
      get.add(data.split("</td>"));
    }
    return get;
  }

  List get_header(String tag) {
    List firstOperators_values = [
      "<b>Java Arithmetic operators</b>",
      "<b>Java BitWise operators</b>",
      "<b>Relational operators in java</b>",
      "<b>Boolean Logical Operators In Java</b>",
      "<b>Assignment Operators In Java</b>",
      "<b>Ternary Operators in Java</b>"
    ];
    List header_items = [];
    List test = [];

    String removeTable = HtmlFormatter.firstBetween(tag, "table").trim();
    String removeRow = removeTable.replaceAll("<tr>", "");
    String removeCol = removeRow.replaceAll("<td>", "");

    test.add(removeCol.split("</tr>"));

    for (int i = 0; i < test[0].length - 1; i++) {
      String data = test[0][i].toString();

      if (data.contains("<th>")) {
        String removeHead = data.replaceAll("<th>", "");
        header_items.add(removeHead.split("</th>"));
      } else {
        remaining_item.add(test[0][i].toString().split("</td>"));
      }
    }

    for (int i = 0; i < firstOperators_values.length; i++) {
      remaining_item[i]
          .replaceRange(0, 1, [firstOperators_values[i].toString()]);
    }

    for (int k = 0; k < header_items[0].length; k++) {
      main_header.add(header_items[0][k]);
    }

    return remaining_item;
  }

  Widget values_add(List value) {
    int get_count = main_header.length - 1;
    double width = get_count * 191.3.ceilToDouble();
    return new Container(
      height: width,
      margin: EdgeInsets.all(6.3),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          Container(
            child: ListView.builder(
                itemCount: main_header.length - 1,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemExtent: 300,
                itemBuilder: (context, index) {
                  return new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(15.3),
                        child: Column(
                          children: <Widget>[
                            Text(
                              main_header[index].toString().trim(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.orange,
                                  letterSpacing: 1.5),
                            ),
                            //VerticalDivider(thickness: 2.3,color: Colors.greenAccent,width: 2.3,),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.pink,
                        height: 1.3,
                        thickness: 1.6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListView.builder(
                              itemCount: value.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: ScrollPhysics(),
                              itemBuilder: (context, check) {
                                return new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      height: 56,
                                      margin: EdgeInsets.only(
                                          left: 15.3,
                                          bottom: 0.0,
                                          right: 9.3,
                                          top: 15.3),
                                      child: Html(
                                        data: value[check][index]
                                            .toString()
                                            .trim(),
                                        style: {
                                          "b": Style(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500,
                                          )
                                        },
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.3,
                                      color: Colors.blueAccent,
                                    ),
                                  ],
                                );
                              }),
                        ],
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

  conversion(String imagePath) {
    List<String> imagesplit = imagePath.split(":");
    imagesplit.removeAt(0);
    imagesplit.insert(0, "https:" + imagesplit[0].toString());
    var image = imagesplit[0].toString();
    return image;
  }

  int header(String table) {
    int count = 0;
    List thNameList = [];
    List dataNames = [];
    // thNameList.add(table.split("<tr>"));
    //insert code here....
    print("Table data printing--------------------");

    String removeTabledata = HtmlFormatter.firstBetween(table, "table").trim();

    String removeRow = removeTabledata.replaceAll("<tr>", "");

    String removeCol = removeRow.replaceAll("<th>", "");

    thNameList.add(removeCol.split("</tr>"));
    String reqValue = thNameList[0][0];
    // print(reqValue);
    dataNames.addAll(reqValue.split("</th"));
    int tableHeaderNameCount = (dataNames.length) - 1;

    return tableHeaderNameCount;
  }
}
