
class EasySession {
  final int order_id;
  final String quiz_id;
  final String session_identifier;
  final String topic_ids;
  List quiz_questions = List();

  EasySession(
      {this.order_id,
        this.quiz_id,
        this.session_identifier,
        this.topic_ids,
        this.quiz_questions,

      });

  factory EasySession.fromJson(Map<String, dynamic> json) {
    return EasySession(
        order_id: json['order_id'],
        quiz_id: json['quiz_id'],
        session_identifier: json['session_identifier'],
        topic_ids: json['topic_ids'],
        quiz_questions: json['quiz_questions']
            .map((i) => QuizQuestion.fromJson(i))
            .toList());
  }
}
class QuizQuestion {
  final bool frozen;
  final int id;
  final int marks;
  final int questionable_id;
  final String questionable_type;

  QuizQuestion(
      {this.frozen,
        this.id,
        this.marks,
        this.questionable_id,
        this.questionable_type});

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
        frozen: json['frozen'],
        id: json['id'],
        marks: json['marks'],
        questionable_type: json['questionable_type'],
        questionable_id: json['questionable_id']);
  }
}
