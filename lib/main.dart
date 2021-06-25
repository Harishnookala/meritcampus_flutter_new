import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/welcome.dart';
import 'package:meta/meta.dart';
import 'login.dart';

void main() => runApp(
    MaterialApp(

      home: Login(),
        initialRoute: '/',

        routes: {
          '/main_screen': (context) => Login(),
            // When navigating to the "/" route, build the FirstScreen widget.
          //  '/main_screen': (context) => App(),
            // When navigating to the "/second" route, build the SecondScreen widget.
        },
    )
);

























