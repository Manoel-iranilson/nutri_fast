import 'package:nutri_fast/constants.dart';
import 'package:nutri_fast/models/authentication/authentication_model.dart';
import 'package:nutri_fast/repositories/authentication/authentication_repository.dart';
import 'package:nutri_fast/repositories/authentication/params/register_params.dart';
import 'package:http/http.dart' as http;

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  @override
  Future<String> register(RegisterParams params) async {
    try {
      final response = await http.post(Uri.parse("$baseApi/user"),
          body: {"email": params.email, "password": params.password});

      if (response.statusCode == 201) {
        return "Usuario cadastrado com sucesso";
      } else {
        throw Exception('Erro ao realizar cadastro');
      }
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }

  @override
  Future<AuthenticationModel> login(RegisterParams params) async {
    try {
      final response = await http.post(Uri.parse("$baseApi/auth/login"),
          body: {"email": params.email, "password": params.password});

      return AuthenticationModel(access_token: response.body);
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }
}
