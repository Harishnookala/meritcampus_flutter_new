class Login {
  String login_token;
  String status;
  String referrer_mobile;
  Login({this.login_token, this.status, this.referrer_mobile});

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      status: json['status'],
      login_token: json['login_token'],
      referrer_mobile: json['referrer_mobile'],
    );
  }
}