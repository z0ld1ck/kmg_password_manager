import 'package:graphql_flutter/graphql_flutter.dart';

abstract class NetworkClientInterface {
  const NetworkClientInterface();

  Future<QueryResult> queryGraphQL(String query,
      {Map<String, dynamic>? variables});

  Future<QueryResult> mutationGraphQL(String mutation,
      {Map<String, dynamic>? variables});
}

class NetworkClient implements NetworkClientInterface {
  late final GraphQLClient _graphQLClient;

  NetworkClient(String uri) {
    final Link link = HttpLink(uri);
    _graphQLClient = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }

  @override
  Future<QueryResult> queryGraphQL(String query, {Map<String, dynamic>? variables}) async {
    final options = QueryOptions(
      document: gql(query),
      variables: variables ?? {},
    );
    return await _graphQLClient.query(options);
  }

  @override
  Future<QueryResult<Object?>> mutationGraphQL(String mutation, {Map<String, dynamic>? variables}) async  {
    final options=MutationOptions(document: gql(mutation),variables:variables??{});
    return await _graphQLClient.mutate(options);
  }
}
