class Output {
  bool hasWarnings;
  bool hasErrors;
  String errors;
  String warnings;
  String outputLines;
  String inputLines;
  bool success;
  String formattedCode;

  Output(
      {this.hasWarnings,
        this.hasErrors,
        this.errors,
        this.warnings,
        this.outputLines,
        this.inputLines,
        this.success,
        this.formattedCode});

  Output.fromJson(Map<String, dynamic> json) {
    hasWarnings = json['has_warnings'];
    hasErrors = json['has_errors'];
    errors = json['errors'];
    warnings = json['warnings'];
    outputLines = json['output_lines'];
    inputLines = json['input_lines'];
    success = json['success'];
    formattedCode = json['formatted_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['has_warnings'] = this.hasWarnings;
    data['has_errors'] = this.hasErrors;
    data['errors'] = this.errors;
    data['warnings'] = this.warnings;
    data['output_lines'] = this.outputLines;
    data['input_lines'] = this.inputLines;
    data['success'] = this.success;
    data['formatted_code'] = this.formattedCode;
    return data;
  }
}
