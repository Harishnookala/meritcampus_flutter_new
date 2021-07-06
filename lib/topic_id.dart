import 'package:flutter/material.dart';
import 'package:meritcampus_flutter_new/api.dart';
import 'package:meritcampus_flutter_new/end_drawer.dart';

import 'models/topic.dart';

class Topic_id extends StatelessWidget{
  int id;
  Topic_id({this.id});
  @override
  Widget build(BuildContext context) {
    print(id);
    // TODO: implement build
   new FutureBuilder<Topic>(
       future:Api.loadTopic(id),
       builder: (context,snap){
         print("Harish");
         if(snap.hasData){
         }
         else{
           print(snap.error);
         }
         return new CircularProgressIndicator();
       }
   );
  }

}