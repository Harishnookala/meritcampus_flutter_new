import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Otp.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  var pressed = true;
  final TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Images/login_background.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
            child: Center(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('Images/mc_android_log.png'),
                          TextFormField(
                            controller: textFieldController,
                            keyboardType: TextInputType.phone,
                            decoration: new InputDecoration(
                              hintText: ' Enter your Phone number',
                            ),
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 28,
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            padding: EdgeInsets.all(12.3),
                          ),
                          FlatButton(
                            child: Text(
                              'Generate otp',
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () {
                              setState(() {
                                pressed ? testValidNumStatus(context) : null;
                              });
                            },
                            color: Colors.green,
                          )
                        ])))),
      ),
    );
  }

  testValidNumStatus(BuildContext context) async {
    final String mobileNum = textFieldController.text;
    final response = await http.get(
        'https://java.meritcampus.com/users/register_and_generate_otp.json?mobile_number=$mobileNum');
    if (response.statusCode == 200) {
      print("Hai");
      if (mobileNum.isNotEmpty) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Otp(
                      text: mobileNum,
                    )));
      }
    } else {
      throw Exception('Failed to load post');
    }
  }

  build_center_widget() {
    return new Center(
      child: Column(
        children: [Text("fdg")],
      ),
    );
  }
}

class login_number {
  final String statusString;
  login_number({this.statusString});
  factory login_number.fromJson(Map<String, dynamic> json) {
    return login_number(
      statusString: json['status'],
    );
  }
}
