class Topic {
  final String title;
  final String definition;
  final String description;
  final int id;

  Topic({this.title, this.definition, this.description, this.id});

  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(
        title: json['title'],
        definition: json['definition'],
        description: json['description'],
        id: json['id']);
  }
}
