import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/wrappers.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'classmodels/EasySession.dart';
import 'show_topics.dart';
import 'QuestionWidget.dart';

class EasySessionWidget extends StatelessWidget {
  List<EasySession> session;
  EasySession easySession;
  String question_type;
  int id;
  int marks;
  String title;
  bool is_value = false;
  final customfunction;
  int questionable_id;
  EasySessionWidget({this.easySession, this.customfunction, this.session});
  @override
  Widget build(BuildContext context) {
    final ItemScrollController itemScrollController = ItemScrollController();

    var topic_id = easySession.topic_ids
        .split(",")
        .map((i) => int.parse(i.trim()))
        .toList();
    var controller = ScrollController();
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
           child: ListView.builder(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: topic_id.length,
              controller: controller,
              shrinkWrap: true,
              itemBuilder: (context, index) {
               // print(ScreenUtil.screenHeight);
                return new Column(
                  children: [
                    (index == 0)
                        ? AmberHeading(heading: "Session" + easySession.session_identifier,)
                        : Container(),
                    if (easySession.topic_ids.isNotEmpty)
                      TopicWidget(
                        topicId: topic_id[index],
                        is_value: is_value,
                      ),
                     if (easySession.quiz_questions != null)
                      Column(
                        children: Question_widget(easySession),
                      )
                  ],
                );
              }),
         ),   
    ]);
  }

  List<Widget> Question_widget(EasySession easySession) {
    List<Widget> QuestionType = [];
    QuestionType.add(ListView.builder(
        //main listview
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: easySession.quiz_questions.length,
        itemBuilder: (context, index) {
          question_type = easySession.quiz_questions[index].questionable_type;
          id = easySession.quiz_questions[index].id;
          questionable_id = easySession.quiz_questions[index].questionable_id;
          marks = easySession.quiz_questions[index].marks;
          return new Container(
            child: build_question_widget(question_type, id, questionable_id),
          );
        }));
    return QuestionType;
  }

  build_question_widget(
    String Question,
    int id,
    int questionable_id,
  ) {
    return Question == "Question" || Question == "OrderQuestion"
        ? build_question_type_widget(
            id: id,
            session: easySession,
            customfunction: this.customfunction,
            marks: this.marks)
        : build_java_question_widget(
            questionable_id: questionable_id, session: easySession);
  }
}
