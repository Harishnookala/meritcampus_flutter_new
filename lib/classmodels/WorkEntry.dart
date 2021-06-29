import 'package:meritcampus_flutter_new/classmodels/Topic.dart';
import 'package:serializable/serializable.dart';

import 'JavaFullQuestion.dart';
import 'Question.dart';



class WorkEntry extends Reflectable implements Serializable {

  @SerializedName("id")
  int id;
  @SerializedName("entryType")
  String entryType;

  @SerializedName("title")
   String title;

  @SerializedName("entryId")

  int entryId;
  Topic loadedTopic = new Topic();
  Question loadedQuestion = new Question();
  JavaFullQuestion loadedJavaQuestion = new JavaFullQuestion();
  bool loaded = false;
  JavaFullQuestion get getLoadedJavaQuestion {
    return loadedJavaQuestion;
  }
  void set setLoadedJavaQuestion(JavaFullQuestion loadedJavaQuestion) {
    this.loadedJavaQuestion = loadedJavaQuestion;
    loaded = true;

  }
  int  getId(){
    return id;
  }

  void setId(int id) {
    this.id = id;
  }



  String  getEntryType() {
    return entryType;
  }
  void  setEntryType(String entryType) {
    this.entryType = entryType;
  }



  int  getEntryId() {
    return entryId;
  }
  void  setEntryId(int entryId) {
    this.entryId = entryId;
  }

  void setTitle(String title) {
    this.title = title;
  }

  String  getTitle() {
    return title;
  }


  @override
  String toString() {
    return "WorkEntry{" +
        "id=" + id.toString() +
        ", entryType='" + entryType + '\'' +
        ", title='" + title + '\'' +
        ", entryId=" + entryId.toString() +
        ", loadedTopic=" + loadedTopic.toString() +
        ", loadedQuestion=" + loadedQuestion.toString() +
        ", loadedJavaQuestion=" + loadedJavaQuestion.toString()+
        ", loaded=" + loaded.toString() +
        '}';
  }
}
