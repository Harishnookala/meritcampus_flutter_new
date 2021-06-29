import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:meritcampus_flutter_new/wrappers.dart';


import 'Api.dart';
import 'Results.dart';
import 'classmodels/Compile.dart';
import 'classmodels/JavaFullQuestion.dart';
import 'html_formatter.dart';

class try_java_question extends StatefulWidget {
  JavaQuestion question;
  String baseQuestion;
  bool is_value;
  try_java_question({
    this.question,
    this.is_value,
    this.baseQuestion,
  });
  @override
  _try_java_questionState createState() => _try_java_questionState(
      question: this.question,
      is_value: this.is_value,
      baseQuestion: this.baseQuestion);
}

class _try_java_questionState extends State<try_java_question> {
  List caseList = new List();
  List<Widget> showList = new List();

  JavaQuestion question;
  bool is_value;
  String baseQuestion;
  String convert_Uri;
  TextEditingController _editingController = new TextEditingController();

  _try_java_questionState({this.question, this.is_value, this.baseQuestion});

  @override
  void initState() {
    super.initState();
      String edit = processFillers(question.methodTemplate);
      _editingController.text = edit;
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String title = baseQuestion;
    title = HtmlFormatter.replaceWithHtmlTags(title, "cl", "<b>", "</b>");
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 12.3,bottom: 9.3,top: 7.6),
            child:HtmlWidget(
              title,
              textStyle: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            color: Colors.black87,
          child: Stack(children: [
            new Container(
              alignment: Alignment.topLeft,
                 child:Column(
                   children: [
                   Container(
                     alignment: Alignment.topLeft,
                     margin: EdgeInsets.only(left: 5.3,top:12.3),
                     child:Text("public class " +
                         question.className +
                         " {\n  /*--MAIN START--*/\n\t" +
                         "public static void main (String args [ ]) {\n\n" +
                         question.mainMethodContent +
                         "\n }" +
                         "\n" +
                         question.includesContent ,style: TextStyle(fontSize: 17,color: Colors.white),),
                   ),
                     TextField(
                       controller: _editingController,
                       keyboardType: TextInputType.multiline,
                       maxLines: null,
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: '',
                       ),
                       style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w400,
                           fontSize: 17),
                     ),
                   ],
                 )
            ),

            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(75)),
              alignment: Alignment.topRight,
              child: IconButton(
                hoverColor: Colors.blue,
                 focusColor: Colors.greenAccent,
                highlightColor: Colors.greenAccent,
                onPressed: () {
                  setState(() {
                    String user_code = HtmlFormatter.between(
                        _editingController.text,
                        "/*--YOUR CODE 1 START--*/",
                        "/*--YOUR CODE 1 END--*/");
                    convert_Uri = Uri.encodeComponent(user_code);
                      is_value = true;
                  });
                },
                iconSize: 45,
                icon: Icon(
                  Icons.play_circle_filled,
                  color: Colors.greenAccent,
                ),
              ),
            ),
          ])),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
                is_value?build_results(convert_Uri):Container()
             ],
           )
        ],
      ),
    );
  }

  static String processFillers(String method_template) {
    String result = "";
    List<String> lines = method_template.split("\r\n");
    for (String line in lines) {
      if (line.startsWith("FILLER")) {
        List<String> tokens = line.split(":");
        result += "/*--YOUR CODE " + tokens[1] + " START--*/\r\n\r\n";
        result += "//" + tokens[2] + "\r\n\r\n";
        result += "/*--YOUR CODE " + tokens[1] + " END--*/\r\n";
      } else {
        result += line + "\r\n";
      }
    }
    return result;
  }

   build_results(String conver_uri) {
    Compiler compile;

    return Container(
      alignment: Alignment.topLeft,
      child: FutureBuilder<Compiler>(
        future: Api.get_data(question.id,conver_uri),
        builder: (context,snap){
         if(snap.hasData) {
          compile = snap.data;
           return compile.compileStatus.success == false ?
                        Container(
                          width: double.infinity,
                          child: new Text(compile.compileStatus.errors,style: TextStyle(fontSize: 16),),
                          color:Colors.red,
                          padding:EdgeInsets.all(12.3),
                          //width:double.infinity,
                        )

                    :Results(compile:compile.testStatus);



        }
         else if(snap.hasError){
           return new Text("not getting");
         }
         return new Center(

           child: Text("Loading Results",style: TextStyle(fontSize: 18,),),
         );

        }
      ),
    );
  }

  output_results(CompileStatus testStatus) {
    String outputlines = testStatus.outputLines;
    String headerLine =
    HtmlFormatter.between(outputlines, "<header>", "</header>");
    showList.add((MCBlueHeading(heading: headerLine)));
    caseList = HtmlFormatter.split(outputlines);
    performTestIterations();
    return Column(children: showList);

  }
  void performTestIterations() {
    for (int i = 1; i < caseList.length - 1; i++) {
      String caseLine = HtmlFormatter.between(caseList[i], "<case>", "</case>");

      int expectedValue = int.parse(
          HtmlFormatter.between(caseLine, "<expected>", "</expected"));
      int actualValue =
      int.parse(HtmlFormatter.between(caseLine, "<actual>", "</actual"));
      String descriptionValue;

      descriptionValue =
      (HtmlFormatter.between(caseLine, "<description>", "</description>"));
       print(descriptionValue);
      showList.add(Column(
        children: [
          Container(
            child: Row(
              children: [
                expectedValue == actualValue
                    ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  ),
                )
                    : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.redAccent,
                  ),
                ),
                Text(
                  descriptionValue,
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 180,
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Text(
                        expectedValue.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                      color: Colors.amber,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 180,
                    padding: const EdgeInsets.all(8.0),
                    child: expectedValue == actualValue
                        ? Card(
                      child: Text(
                        actualValue.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                      color: Colors.amber,
                    )
                        : Card(
                      child: Text(
                        actualValue.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                      color: Colors.red,
                    ),
                  ),
                ],
              ))
        ],
      ));

      // print(descriptionValue);
    }
  }


}
