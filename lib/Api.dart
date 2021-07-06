
import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:meritcampus_flutter_new/welcome.dart';
import 'models/compile.dart';
import 'models/plangroup.dart';
import 'models/easysession.dart';
import 'models/exampleprogram.dart';
import 'models/javafullquestion.dart';
import 'models/question.dart';
import 'models/topic.dart';
import 'models/login.dart';
import 'models/output.dart';
import 'models/signup.dart';
import 'inlink.dart';
import 'package:http/http.dart' as http;

class Api {
  static String url = "https://java.meritcampus.com";

  static Future<Topic> loadTopic(int topicId) async {
    final response = await DefaultCacheManager().getSingleFile("$url/topics/$topicId.json");
    final value = await response.readAsString();
    final contents = Topic.fromJson(json.decode(value));
    return contents;
  }

  static Future<Question> loadQuestion(int questionId) async {
    final response = await DefaultCacheManager().getSingleFile(
        "$url/topics/$questionId/read_question.json");
    final contents = await response.readAsString();

    return Question.fromJson(json.decode(contents));
  }

  static Future<ExampleProgram> loadExampleProgram(int exampleProgramId) async {
    final response = await DefaultCacheManager().getSingleFile(
        "$url/example_programs/$exampleProgramId.json");

    final contents = await response.readAsString();
 
    return ExampleProgram.fromJson(json.decode(contents));
  }

  static Future<List<EasySession>> loadStudent(BuildContext context) async {
    String sessions = await DefaultAssetBundle.of(context).loadString("Images/easy_sessions.json");
    final jsonResult = json.decode(sessions) as List;
    List<EasySession> imagesList =
    jsonResult.map((i) => EasySession.fromJson(i)).toList().sublist(0,9);
    return imagesList;
  }

  static Future<JavaFullQuestion> load_basic(int baseId) async {
    final response = await DefaultCacheManager().getSingleFile(
        "$url/java_questions/$baseId/try.json");
    final data = await response.readAsString();

    var content = json.decode(data);
    var baseQuestion = JavaFullQuestion.fromJson(content);

    return baseQuestion;
  }

  static Future<Output> load_results(String code,String className) async {
  final response = await DefaultCacheManager().getSingleFile(
        "$url/java_compiler/app_compiler.json?class_name =$className&code=$code ");
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

  static Future<Compiler> get_values(int id,String get) async {
    final response = await DefaultCacheManager().getSingleFile("$url/java_questions/$id/answer.json?FILLER_1=$get");
    final convert_string = await response.readAsString();
    var compiler = Compiler.fromJson(json.decode(convert_string));
    return compiler;
  }
  
   static Future<Signup>checking_mobie_number(String mobileNum)async{
    var number = await http.get(Uri.parse("$url/users/register_and_generate_otp.json?mobile_number=$mobileNum"));
    var status = Signup.fromJson(jsonDecode(number.body));
    return status;
   }

  static Future<Login>validate_otp( String otp_number,String text,) async {
    final result = await DefaultCacheManager().getSingleFile("$url/users/validate_mobile_otp.json?mobile_number=$text &otp=$otp_number");
    var otp_result = await result.readAsString();
    var response  = Login.fromJson(json.decode(otp_result));
    return response;
  }
}