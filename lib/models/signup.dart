class Signup {
  final String statusString;
  Signup({this.statusString});
  factory Signup.fromJson(Map<String, dynamic> json) {
    return Signup(
      statusString: json['status'],
    );
  }
}