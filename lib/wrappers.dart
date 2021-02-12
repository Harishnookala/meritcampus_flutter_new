import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:meritcampus_flutter_new/syntax_highlighter.dart';


class AmberHeading extends StatelessWidget {
  String heading;

  AmberHeading({this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Center(
            child: Container(
                color: Colors.amber,
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      heading,
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w400),
                    )))));
  }
}

class ThinAmberHeading extends StatelessWidget {
  String heading;

  ThinAmberHeading({this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Center(
            child: Padding(
                padding: EdgeInsets.all(1),
                child: Text(
                  heading,
                ))));
  }
}

class MCBlueHeading extends StatelessWidget {
  String heading;

  MCBlueHeading({this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 4.0),
        color: Colors.green,
        child: Container(
            color: Colors.blue,
            child: Center(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      heading,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )))));
  }
}

class MCHtmlText extends StatelessWidget {
  String text;

  MCHtmlText({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.3),
        child: Html(
          data: text,
          style: {
            "Html": Style(fontSize: FontSize.medium),
            "p": Style(
              padding: EdgeInsets.all(9.6),
              border: Border.all(color: Colors.green),
              //margin: EdgeInsets.all(12.3),
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )
          },
        ));
  }
}

class Question_title extends StatelessWidget {
  String title;
  Question_title({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          bottom: 4.0,
        ),
        color: Colors.green,
        child: Container(
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Html(
                  data: title,
                  style: {
                    "Html": Style(
                      fontSize: FontSize.large,
                      color: Colors.white,
                    )
                  },
                )),
              ],
            )));
  }

  // TODO: implement build
}

class JavaCode extends StatelessWidget {
  String code;

  JavaCode({this.code});

  @override
  Widget build(BuildContext context) {
    final SyntaxHighlighterStyle style =
        SyntaxHighlighterStyle.darkThemeStyle();

    var codeEditText = new Theme(
        data: new ThemeData(
            primaryColor: Colors.white,
            primaryColorDark: Colors.white,
            hintColor: Colors.greenAccent),
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontFamily: 'monospace', fontSize: 16.0),
                    children: <TextSpan>[
                      DartSyntaxHighlighter(style).format(code)
                    ],
                  ),
                ))));

    return Container(color: Colors.black, child: codeEditText);
  }
}
