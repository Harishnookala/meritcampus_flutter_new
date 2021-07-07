import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/welcome.dart';
import 'login.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var token = prefs.getString('token');
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: token==null?Signup():App()));

}

























