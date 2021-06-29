import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'classmodels/Compile.dart';
import 'classmodels/PlanGroup.dart';
import 'classmodels/EasySession.dart';
import 'classmodels/ExampleProgram.dart';
import 'classmodels/JavaFullQuestion.dart';
import 'classmodels/Question.dart';
import 'classmodels/Topic.dart';
import 'classmodels/output.dart';
import 'inlink.dart';
import 'package:http/http.dart' as http;

class Api {

  static Future<Topic> loadTopic(int topicId) async {
    final response = await http.get("https://java.meritcampus.com/topics/$topicId.json");
    final contents = Topic.fromJson(json.decode(response.body));
    return contents;
  }

  static Future<Question> loadQuestion(int questionId) async {
    final response = await DefaultCacheManager().getSingleFile(
        "https://java.meritcampus.com/topics/$questionId/read_question.json");
    final contents = await response.readAsString();

    return Question.fromJson(json.decode(contents));
  }

  static Future<ExampleProgram> loadExampleProgram(int exampleProgramId) async {
    final response = await DefaultCacheManager().getSingleFile(
        "https://java.meritcampus.com/example_programs/$exampleProgramId.json");

    final contents = await response.readAsString();
 
    return ExampleProgram.fromJson(json.decode(contents));
  }

  static Future<List<EasySession>> loadStudent(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context).loadString("Images/easy_sessions.json");
    final jsonResult = json.decode(data) as List;
    List<EasySession> imagesList =
    jsonResult.map((i) => EasySession.fromJson(i)).toList().sublist(0,9);
    return imagesList;
  }

  static Future<JavaFullQuestion> load_basic(int baseId) async {
    final response = await DefaultCacheManager().getSingleFile(
        "https://java.meritcampus.com/java_questions/$baseId/try.json");
    final data = await response.readAsString();

    var content = json.decode(data);
    var baseQuestion = JavaFullQuestion.fromJson(content);

    return baseQuestion;
  }

  static Future<Output> load_results(String code,String class_name) async {
  final response = await DefaultCacheManager().getSingleFile(
        "https://java.meritcampus.com/java_compiler/app_compiler.json?class_name =$class_name&code=$code ");
    final data = await response.readAsString();
    var content = json.decode(data);
    var results = Output.fromJson(content);

    return results;
  }


  static  loadGroups(BuildContext context)  {

    List get = Plan_topics.data;
    final jsonResult = get as List;
    List<PlanGroup> imagesList =
    jsonResult.map((i) => PlanGroup.fromJson(i)).toList();
    return imagesList;
  }

  static Future<Compiler> get_data(int id,String get) async {
    final response = await http.post("https://java.meritcampus.com/java_questions/$id/answer.json?FILLER_1=$get");
    var content = json.decode(response.body);
    var compiler = Compiler.fromJson(content);
    return compiler;
  }
}