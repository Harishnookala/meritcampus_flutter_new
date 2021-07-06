class Question {
  final String question_text;
  final String question_name;
  final int id;
  final String explanation;
  List choices = List();

  Question(
      {this.question_text,
        this.question_name,
        this.id,
        this.explanation,
        this.choices});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
        question_text: json['question_text'],
        question_name: json['question_name'],
        explanation: json['explanation'],
        choices: json['choices'].map((i) => Choice.fromJson(i)).toList());
  }
}
class Choice {
  final String choice_text;
  final bool correct;
  final String identifier;

  Choice({this.choice_text, this.correct, this.identifier});

  factory Choice.fromJson(Map<String, dynamic> json) {
    return Choice(
        choice_text: json['choice_text'],
        correct: json['correct'],
        identifier: json['identifier']);
  }
}

