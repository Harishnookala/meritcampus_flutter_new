import 'package:flutter/material.dart';
import 'sessions.dart';
import 'topic_widget.dart';
import 'welcome.dart';

import 'end_drawer.dart';
class MainDrawer extends StatefulWidget {
  @override
  MainDrawerState createState() => MainDrawerState();
}

class MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListView(
      children: <Widget>[
        DrawerHeader(
            child:Image.asset("Images/mc_logo.png"),
        ),
        CustomTitle(Icons.score,'Score',()=> Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) =>  TopicWidget()),
        ),
        ),
        CustomTitle(Icons.list,'Topics',()=> Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => Session()),
        ),
        ),
        CustomTitle(Icons.share,'Share',()=> Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new TopicWidget()),
        ),
        ),
        CustomTitle(Icons.monetization_on,'Cash Back',()=> Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new TopicWidget()),
        ),
        ),
        CustomTitle(Icons.monetization_on,'Weekly Competition',()=> Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new TopicWidget()),
        ),
        ),
        CustomTitle(Icons.settings,'Settings',()=> Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new TopicWidget()),
        ),
        ),


      ],
      ),
    );
  }
}

class CustomTitle extends StatelessWidget{
  final IconData icon;
  final  String text;
  final  Function onTap;

  CustomTitle(this.icon,this.text,this.onTap);

  Widget build(BuildContext context) {
    return Container(

      child:InkWell(
        onTap:onTap,
        child: Container(
          margin: EdgeInsets.only(left:16.5,bottom: 29.6,),
          child:Row(
            children:[
              Icon(icon),
              Container(
                  padding:EdgeInsets.only(left:29.3,),
                  child:Text(text,style:TextStyle(fontSize:19.0))
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ),
    );
  }

}
