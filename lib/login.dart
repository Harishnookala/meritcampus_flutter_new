import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/welcome.dart';
import 'api.dart';
import 'models/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignupState();
  }
}

class SignupState extends State<Signup> {
  SharedPreferences prefsdata;
  String login_token;
  bool checking_error =false;
  var pressed = false;
  String otpnumber;
  TextEditingController mobile_number = TextEditingController();
  String mobileNum;
  int count = 0;
  bool otp_invalid;
  var validate_mobile_number;
  Future<Login> response;
  TextEditingController textfield_Otp = TextEditingController();

  var error;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "Images/login_background_blur_2.jpg",
                ),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,

          body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child:Container(
                      child: Image.asset("Images/mc_logo.png",alignment: Alignment.center,width: 90,))
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      child: Center(
                          child: Padding(
                              padding: EdgeInsets.all(33),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    build_phone_number(),
                                  ]
                              )
                          )
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  build_phone_number() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          controller: mobile_number,
          keyboardType: TextInputType.phone,
          decoration: new InputDecoration(
              hintStyle: TextStyle(color: Colors.lightBlue, fontSize: 19),
              hintText: ' Enter your Phone number',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.cyanAccent),
              ),
              contentPadding: EdgeInsets.only(left: 13)
          ),
          style: TextStyle(
              color: Colors.lime, fontSize: 21, fontWeight: FontWeight.w700),
        ),
        pressed ? build_otp() : Container(),
        Container(
          margin: EdgeInsets.only(top: 16),
          child: SizedBox(
            width: 220,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreenAccent,
              ),
              child: pressed ? Text('Login ', style: TextStyle(fontSize: 19, color: Colors.black38),)
                  : Text('Generate Otp ', style: TextStyle(fontSize: 19, color: Colors.black38),),
              onPressed: () async {
                otpnumber = textfield_Otp.text;
                mobileNum = mobile_number.text;
                bool value = validate_check();
                if (value) {
                  var idea = validate_token();
                   error = await idea;
                   if(error!=null){
                     checking_error = true;
                     return checking_error;
                   }
                }
              },
            ),
          ),
        ),
        checking_error?Center(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Text("Otp is invalid",style: TextStyle(fontSize: 19,color: Colors.red),),
            ),
          ):Container()
      ],
    );
  }

  build_otp() {
    return Column(
        children: [
          build_resend_button(),
          Container(
            child: TextFormField(
              controller: textfield_Otp,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w700, color: Colors.lime),
              decoration: new InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                hintText: ' Enter otp sent to your mobile number',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent),
                ),
              ),
            ),
          )
        ]);
  }

  bool validate_check() {
    setState(() {
      count++;
      if (mobileNum.isNotEmpty) {
        pressed = true;
        if(count==1){
          Api.checking_mobie_number(mobileNum);
        }
      }
      if (pressed) {
        print(count);
        pressed = true;
      }
    });
    return pressed;
  }




   validate_token() async{
    prefsdata = await SharedPreferences.getInstance();
    if (otpnumber.isNotEmpty) {
      Future<Login> future =
      Future(() => Api.validate_otp(otpnumber, mobileNum));
      var value = await future;
      if (value.status == "Success") {
        login_token = value.login_token;
        prefsdata.setString('token', login_token);
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new App(token: login_token,)),
        );
      } else {
         validate_mobile_number = "Otp is invalid";
           return validate_mobile_number;
      }
    }
  }
  build_resend_button() {
    return new Center(
      child: SizedBox(
        height: 50,
        child: TextButton(
          child: Text(
            "Resend OTP",
            style: TextStyle(color: Colors.lime,fontSize: 15),
          ),
          onPressed: () {
            print(mobile_number.text);
            Api.checking_mobie_number(mobile_number.text);
          },
        ),
      ),
    );
  }
}
