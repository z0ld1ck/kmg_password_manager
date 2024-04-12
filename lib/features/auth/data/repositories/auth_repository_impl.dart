import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/network/query_mutations.dart';
import '../../../home/data/models/source_model.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final NetworkClient _networkClient;

  AuthRepositoryImpl(this._networkClient);

  @override
  Future<void> logIn({required String username, required String password}) async {
    try {
      final client = _networkClient.getClient().value;
      final result = await client.mutate(
        MutationOptions(
          document: gql(login()),
          variables: {
            'username': username,
            'password': password,
          },
        ),
      );

      if (result.hasException) {
        throw Exception('Error occurred during login: ${result.exception}');
      }
    } catch (e) {
      throw Exception('Error occurred during login: $e');
    }
  }

  @override
  Future<UserModel> register({required String username, required String password}) async {
    try {
      final client = _networkClient.getClient().value;

      const String register = '''
        mutation Register(\$username: String!, \$password: String!) {
          register(username: "\$username", password: "\$password") {
            refreshToken
            token
          }
        }
      ''';

      final result = await client.mutate(
        MutationOptions(
          document: gql(register),
          variables: {
            'username': username,
            'password': password,
          },
        ),
      );

      if (result.hasException) {
        throw Exception('Error occurred during registration: ${result.exception}');
      }

      final Map<String, dynamic>? registerData = result.data?['register'];
      if (registerData == null) {
        throw Exception('Registration data not found in response');
      }

      final UserModel userModel = UserModel(
        id: registerData['id'],
        username: registerData['username'],
        password: registerData['password'],
      );

      return userModel;
    } catch (e) {
      throw Exception('Error occurred during registration: $e');
    }
  }
}
