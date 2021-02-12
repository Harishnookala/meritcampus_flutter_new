import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/welcome.dart';
import 'package:meta/meta.dart';
import 'login.dart';

void main() => runApp(
    MaterialApp(

      home: App(),
        initialRoute: '/',

        routes: {

            // When navigating to the "/" route, build the FirstScreen widget.
            '/main_screen': (context) => App(),
            // When navigating to the "/second" route, build the SecondScreen widget.
        },
    )
);

























