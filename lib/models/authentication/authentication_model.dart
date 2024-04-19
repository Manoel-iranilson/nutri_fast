import 'dart:convert';

class AuthenticationModel {
  final String token;

  AuthenticationModel({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'token': token,
    };
  }

  factory AuthenticationModel.fromMap(Map<String, dynamic> map) {
    return AuthenticationModel(
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthenticationModel.fromJson(String source) =>
      AuthenticationModel.fromMap(json.decode(source));
}
