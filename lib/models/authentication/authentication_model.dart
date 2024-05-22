import 'dart:convert';

class AuthenticationModel {
  final String access_token;

  AuthenticationModel({
    required this.access_token,
  });

  Map<String, dynamic> toMap() {
    return {
      'access_token': access_token,
    };
  }

  factory AuthenticationModel.fromMap(Map<String, dynamic> map) {
    return AuthenticationModel(
      access_token: map['access_token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthenticationModel.fromJson(String source) =>
      AuthenticationModel.fromMap(json.decode(source));
}
