import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'models/output.dart';
import 'wrappers.dart';

import 'api.dart';
import 'models/exampleprogram.dart';
import 'html_formatter.dart';

class JavaExampleProgram extends StatefulWidget {
  final int programId;
  bool is_value;
  JavaExampleProgram({this.programId, this.is_value});

  @override
  JavaExampleProgramState createState() {
    return JavaExampleProgramState(programId: this.programId,is_value:is_value);
  }
}

class JavaExampleProgramState extends State<JavaExampleProgram> {
  Future<ExampleProgram>program;
  int programId;
  bool is_value;
  ExampleProgram loadedProgram;
 JavaExampleProgramState({this.programId, this.is_value});
  @override
  Widget build(BuildContext context) {
    program = Api.loadExampleProgram(programId);
    // TODO: implement build
     return FutureBuilder<ExampleProgram>(
        future: program,
       builder: (context,snap){
          if(snap.hasData){
            return Container(
              color: Colors.white,
              child:basic_program(example:snap.data,is_value:is_value, )
            );
          }
          else if (snap.hasError) {
            return Text("${snap.error}");
          }

          // By default, show a loading spinner
          return CircularProgressIndicator();
       }

     );
  }
}

class basic_program extends StatefulWidget{
   ExampleProgram example;
   bool is_value;
   basic_program({ this.example, this.is_value});
   basic_program_state createState() {
     return basic_program_state(program: this.example,is_value: this.is_value);
   }

}

class basic_program_state  extends State<basic_program> {

  ExampleProgram program;
  bool is_value;
 String convert_Uri;
 String class_name;
 String edit;
  basic_program_state({ this.program,  this.is_value});
  TextEditingController _editingController = new TextEditingController();
  @override
  void initState() {
    super.initState();
     edit = "/*--MAIN START--*/\n" +
        (program.include_main_method
            ? "public static void main (String args[]) {\n"
            : "") +
        program.class_content +
        "" +
        (program.include_main_method ? "\n }\n" : "") +
        "/*--MAIN END--*/\n}" +
        (HtmlFormatter.isValid(program.other_classes)
            ? "\n/*--CLASSES START--*/\n" +
            program.other_classes +
            "\n/*--CLASSES END--*/\n"
            : "");
    _editingController.text = edit;
  }


  @override
  Widget build(BuildContext context) {

    String values = HtmlFormatter.between(edit, "/*--MAIN START--*/",  "/*--MAIN END--*/", );
    String encode = Uri.encodeComponent(values);
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
           // margin: EdgeInsets.only(left: 12.3,bottom: 9.3,top: 7.6),
            child:MCBlueHeading(
               heading: program.class_name,
            ),
          ),
          Container(
              color: Colors.black87,
              child: Stack(children: [
                new Container(
                  padding: EdgeInsets.all(8.3),
                    alignment: Alignment.topLeft,
                    child:Column(
                      children: [
                        Column(
                          children: [
                           Container(
                             child:Text("public class" + " " + program.class_name +"{",style: TextStyle(color: Colors.white,fontSize: 17),),
                             alignment: Alignment.topLeft,
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
                            "/*--MAIN START--*/",
                            "/*--MAIN END--*/");
                        class_name = program.class_name;
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
              is_value?build_output(class_name,convert_Uri):Container(
                child: build_output(program.class_name, encode),
              ),
              Container(
                child: Html(data:HtmlFormatter.format(program.description),style: {
                  "cw":Style(
                    backgroundColor: Colors.blueAccent
                  )
                },),
              )
            ],

          )
        ],
      ),
    );
  }

  build_output(String class_name, String convert_uri) {
    Output output;
    return new Container(
      alignment: Alignment.topLeft,
      child: FutureBuilder<Output>(
        future: Api.load_results(convert_uri, class_name),
        builder: (context,snap){
          if(snap.hasData){
            output = snap.data;
            return new Container(
                color: Colors.lightGreenAccent,
                child:output.hasErrors?Container(
                  color: Colors.red,
                  child: Html(data:output.errors),):Container(
                     color: Colors.lightGreenAccent,
                    child:Html(data: output.outputLines)));
          }
          else if(snap.hasError){
            return new Text("No");
          }
          return new Center(
            child: Text("Loading Results",style: TextStyle(fontSize: 18,),),
          );

        }
      ),
    );
  }

}

