import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:meritcampus_flutter_new/welcome.dart';
class Otp extends StatelessWidget {
  bool pressed = true;
  final String text;
  // var sen= "Enter otp";
  TextEditingController textfield_Otp = TextEditingController();
  final Future<otp> otp_number;

  Otp({Key key, @required this.text, this.otp_number}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(19.3),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(19.6),
            ),
            Image.asset('Images/mc_logo.png'),
            TextFormField(
              controller: textfield_Otp,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              decoration: new InputDecoration(
                  hintText: ' Enter otp sent to your mobile number',

              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.3),
            ),
            new RaisedButton(
                color: Colors.white,
                child: Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 23,
                      decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
                onPressed: () {
                  Validate_Fetch_Data(context,textfield_Otp.text);
                }

                ),
          ],
        ),
      ),
    );
  }

  Future<otp> Validate_Fetch_Data(BuildContext context, String otp_number) async {
    String otp_input = otp_number;
    final result = await http.get(
        'https://java.meritcampus.com/users/validate_mobile_otp.json?mobile_number=$text &otp=$otp_input');

    var check = otp.fromJson(json.decode(result.body));
    if (result.statusCode == 200) {
      if (check.status == "Success") {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new App()),
        );
      } else {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new Otp(text: text)),
        );
      }
      //return otp_check.fromJson(json.decode(result.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}

class otp {
  String login_token;
  String status;
  String referrer_mobile;
  otp({this.login_token, this.status, this.referrer_mobile});

  factory otp.fromJson(Map<String, dynamic> json) {
    return otp(
      status: json['status'],
      login_token: json['login_token'],
      referrer_mobile: json['referrer_mobile'],
    );
  }
}
