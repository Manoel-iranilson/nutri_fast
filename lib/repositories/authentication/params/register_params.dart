class RegisterParams {
  final String email;
  final String password;

  RegisterParams({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory RegisterParams.fromMap(Map<String, dynamic> map) {
    return RegisterParams(
      email: map['email'],
      password: map['password'],
    );
  }
}
