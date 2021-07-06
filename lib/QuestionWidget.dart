import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:meritcampus_flutter_new/try_java_question.dart';
import 'models/compile.dart';
import 'wrappers.dart';

import 'api.dart';
import 'models/easysession.dart';
import 'models/javafullquestion.dart';
import 'models/question.dart';
import 'html_formatter.dart';

class build_question_type_widget extends StatefulWidget {
  int id;
  EasySession session;
  int score;
  final customfunction;
  int marks;
  build_question_type_widget({
    this.id,
    this.session,
    this.score,
    this.customfunction,
    this.marks
  });

  build_question createState() {
    // TODO: implement createState
    return build_question(id: this.id, session: session, marks: this.marks ,customfunction:this.customfunction,);
  }
}

class build_question extends State<build_question_type_widget> {
  int id;
  EasySession session;
  Question question;
  String lastChosenIdentifier;
  int marks;
  final customfunction;
  build_question({
    this.id,
    this.session,
    this.marks,
    this.customfunction
  });
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          FutureBuilder<Question>(
              future: Api.loadQuestion(id),
              builder: (context, snap) {
                if (snap.hasData) {
                  question = snap.data;
                  return Container(
                    child: correct_Choices(question, context, marks),
                  );
                } else if (snap.hasError) {
                  return new Text("Error in fluttrue");
                }
                return new Center(
                  child: CircularProgressIndicator(),
                );
              })
        ],
      ),
    );
  }

  Column correct_Choices(Question question, BuildContext context, int marks) {
    var screenSize = MediaQuery.of(context).size;
    List<Widget> children = new List();
    children.add(MCBlueHeading(heading: question.question_name));
    children.add(Container(
      alignment: Alignment.topLeft,
      child: FractionallySizedBox(
        widthFactor: screenSize.width <= 400 ? screenSize.width / 400 : null,
        child: Html(data: question.question_text),
      ),
    ));
    children.addAll(question.choices
        .map((i) => new InkWell(
            onTap: () {
              if (lastChosenIdentifier == null) {
                Choice c = i as Choice;
                setState(() {
                  lastChosenIdentifier = c.identifier;
                });
                if (c.correct == true) {
                  customfunction(marks);
                }
              }
            },
            child: new Container(
                color: lastChosenIdentifier != null
                    ? (lastChosenIdentifier == (i as Choice).identifier
                        ? (i as Choice).correct ? Colors.green : Colors.red
                        : (i as Choice).correct ? Colors.green : null)
                    : null,
                child: new Row(children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.only(
                          top: 8.0, left: 8.0, right: 5.3, bottom: 8.0),
                      child: new Container(
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            border: Border.all(width: 1.0, color: Colors.grey)),
                        child: new Padding(
                            padding: EdgeInsets.all(8),
                            child: new Text((i as Choice).identifier)),
                      )),
                  new Expanded(
                      child: new Container(
                          child: Html(
                    data: HtmlFormatter.format((i as Choice).choice_text),
                  )))
                ]))))
        .toList());
    if (lastChosenIdentifier != null &&
        question.explanation != null &&
        question.explanation.isNotEmpty) {
      children.add(Container(
        margin:
            EdgeInsets.only(top: 15.3, bottom: 0.0, left: 15.3, right: 15.3),
        alignment: Alignment.topLeft,
        child: Text(
          "Explanation : -",
          style: TextStyle(
              color: Colors.black,
              fontSize: 15.9,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w400),
        ),
      ));
      children.add(Container(
        alignment: Alignment.topLeft,
        margin:
            EdgeInsets.only(top: 2.0, bottom: 15.6, right: 15.3, left: 15.6),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.green, width: 1.5)),
        child: FractionallySizedBox(
            widthFactor:
                screenSize.width <= 400 ? screenSize.width / 400 : null,
            child: Html(
              data: question.explanation,
              style: {
                "Html": Style(fontSize: FontSize.medium),
              },
            )),
      ));
    }

    return Column(children: children);
  }
}

class build_java_question_widget extends StatefulWidget {
  int questionable_id;
  EasySession session;
  Future<Compiler> results;
  var usercode;

  build_java_question_widget(
      {this.questionable_id,
      this.session,
      this.results,
      this.usercode,
      });

  @override
  build_java_question createState() {
    // TODO: implement createState
    return build_java_question(
        questionable_id: this.questionable_id,
        session: this.session,
        results: this.results,
        );
  }
}

class build_java_question extends State<build_java_question_widget> {
  int i = 0;
  JavaFullQuestion question;
  BaseQuestion heading;
  int questionable_id;
  EasySession session;
  Future<Compiler> results;
  bool is_value = false;
  String usercode;
  build_java_question(
      {this.questionable_id,
      this.session,
      this.results,
      this.usercode});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        child: SingleChildScrollView(
            child: FutureBuilder<JavaFullQuestion>(
                future: Api.load_basic(questionable_id),
                builder: (context, snap) {
                  if (snap.hasData) {
                    question = snap.data;
                    return new Container(
                      padding: EdgeInsets.only(bottom: 16.3),
                      child: Column(
                        children: [
                          MCBlueHeading(
                            heading: question.baseQuestion.questionName,
                          ),
                          Container(
                            child:try_java_question(question:question.javaQuestion,is_value: is_value,baseQuestion:question.baseQuestion.questionText)
                          ),

                        ],
                      ),
                    );
                  } else if (snap.hasError) {
                    return new Text("does not getting data");
                  }

                  return new Center(
                    child: CircularProgressIndicator(),
                  );
                })));
  }





}

