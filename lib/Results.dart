
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/wrappers.dart';

import 'class_Models/Compile.dart';
import 'html_formatter.dart';

class Results extends StatelessWidget {
  CompileStatus compile;
  String compile_values;

  Results({this.compile_values, this.compile });

  List<Widget> showList = new List();
  List caselist = new List();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build//compiler
    String outputLinesDetails = compile.outputLines;
    String headerLine =
    HtmlFormatter.between(outputLinesDetails, "<header>", "</header>");
    showList.add((MCBlueHeading(heading: headerLine)));
    caselist = HtmlFormatter.split(outputLinesDetails);
    var item = performTestIterations();
    return Column(children: showList);
    //  return new Text(compiler.testStatus.outputLines);
  }
  void performTestIterations() {
    for (int i = 1; i < caselist.length-1; i++) {
      String caseLine = HtmlFormatter.between(caselist[i], "<case>", "</case>");
      int expectedValue = int.parse(
          HtmlFormatter.between(caseLine, "<expected>", "</expected"));
      int actualValue =
      int.parse(HtmlFormatter.between(caseLine, "<actual>", "</actual"));
      String descriptionValue;

      descriptionValue =
      (HtmlFormatter.between(caseLine, "<description>", "</description>"));
      showList.add(Column(
        children: [
          Container(
            child: Row(
              children: [
                expectedValue == actualValue
                    ? Container(
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25,
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
                      color: Colors.green,
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
                      color: Colors.green,
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

    }
  }
}
