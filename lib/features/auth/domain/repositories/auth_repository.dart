import '../../data/models/user_model.dart';

abstract class AuthRepository{
  Future<void> logIn({required String username,required String password});

  Future<UserModel> register({
    required String username,
    required String password,
});
}