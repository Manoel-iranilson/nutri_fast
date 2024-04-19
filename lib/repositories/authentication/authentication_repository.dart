import 'package:nutri_fast/models/authentication/authentication_model.dart';
import 'package:nutri_fast/repositories/authentication/params/register_params.dart';

abstract class AuthenticationRepository {
  Future<AuthenticationModel> register(RegisterParams params);
}
