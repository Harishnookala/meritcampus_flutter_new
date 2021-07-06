class JavaFullQuestion {
   JavaQuestion javaQuestion;
  BaseQuestion baseQuestion;

  JavaFullQuestion({this.javaQuestion, this.baseQuestion});

  JavaFullQuestion.fromJson(Map<String, dynamic> json) {
    javaQuestion = json['java_question'] != null
        ? new JavaQuestion.fromJson(json['java_question'])
        : null;
    baseQuestion = json['base_question'] != null
        ? new BaseQuestion.fromJson(json['base_question'])
        : null;
  }
}
  class JavaQuestion {
  String className;
  String correctFillers;
  int id;
  String includesContent;
  String mainMethodContent;
  String methodTemplate;
  String otherClasses;

  JavaQuestion({
    this.className,
    this.correctFillers,
    this.id,
    this.includesContent,
    this.mainMethodContent,
    this.methodTemplate,
    this.otherClasses,
  });

  JavaQuestion.fromJson(Map<String, dynamic> json) {
    className = json['class_name'];
    correctFillers = json['correct_fillers'];
    id = json['id'];
    includesContent = json['includes_content'];
    mainMethodContent = json['main_method_content'];
    methodTemplate = json['method_template'];
    otherClasses = json['other_classes'];
  }
}

class BaseQuestion {
  String createdAt;
  Null explanation;

  int id;

  int marks;

  String questionName;
  String questionText;
  int questionableId;
  String questionableType;

  String updatedAt;

  BaseQuestion(
      {this.createdAt,
        this.explanation,
        this.id,
        this.marks,
        this.questionName,
        this.questionText,
        this.questionableId,
        this.questionableType,
        this.updatedAt});

  BaseQuestion.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    explanation = json['explanation'];

    id = json['id'];

    marks = json['marks'];

    questionName = json['question_name'];
    questionText = json['question_text'];
    questionableId = json['questionable_id'];
    questionableType = json['questionable_type'];

    updatedAt = json['updated_at'];
  }
}
