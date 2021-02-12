
class ExampleProgram {
  final String class_content;
  final String class_name;
  final String description;
  final String imports;
  final bool include_main_method;
  final String name;
  final String other_classes;
  final String output;
  int id;
  final String things_to_try;

  ExampleProgram(
      {this.class_content,
      this.class_name,
      this.description,
      this.imports,
      this.include_main_method,
      this.name,
      this.other_classes,
      this.output,
        this.id,
      this.things_to_try});

  factory ExampleProgram.fromJson(Map<String, dynamic> json) {
    return ExampleProgram(
        class_content: json['class_content'],
        class_name: json['class_name'],
        description: json['description'],
        imports: json['imports'],
        name: json['name'],
        other_classes: json['other_classes'],
        output: json['output'],
        id:json['id'],
        include_main_method: json['include_main_method']);
  }
}

