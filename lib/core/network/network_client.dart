import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../const/app_strings.dart';

class NetworkClient {
  final String baseUrl;

  NetworkClient(this.baseUrl);

  ValueNotifier<GraphQLClient> getClient() {
    final HttpLink httpLink = HttpLink(baseUrl + AppStrings.graphql);

    final GraphQLClient client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );

    return ValueNotifier(client);
  }
}
