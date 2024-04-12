import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/network/query_mutations.dart';
import '../../../home/data/models/source_model.dart';
import '../../domain/repositories/source_repository.dart';

class     SourceRepositoryImpl implements SourceRepository {
  final NetworkClient _networkClient;

  SourceRepositoryImpl(this._networkClient);

  @override
  Future<SourceModel> createSource(SourceModel sourceModel) async {
    try {
      final client = _networkClient.getClient().value;
      final result = await client.mutate(
        MutationOptions(
          document: gql('''
          mutation CreateSource(\$source: SourceInput!) {
            createSource(source: \$source) {
              id
              name
              password
              tag
              description
              isHidden
            }
          }
        '''),
          variables: {'source': sourceModel.toJson()},
        ),
      );

      if (result.hasException) {
        throw Exception('Error occurred during source creation: ${result.exception}');
      }

      final Map<String, dynamic>? createdSourceData = result.data?['createSource'];
      if (createdSourceData == null) {
        throw Exception('Created source data not found in response');
      }

      final SourceModel createdSource = SourceModel.fromJson(createdSourceData);

      return createdSource;
    } catch (e) {
      throw Exception('Error occurred during source creation: $e');
    }
  }

  @override
  Future<SourceModel> editSource(SourceModel sourceModel) async {
    try {
      final client = _networkClient.getClient().value;
      final result = await client.mutate(
        MutationOptions(
          document: gql('''
          mutation EditSource(\$id: ID!, \$source: SourceInput!) {
            editSource(id: \$id, source: \$source) {
              id
              name
              password
              tag
              description
              isHidden
            }
          }
        '''),
          variables: {'id': sourceModel.sourceId, 'source': sourceModel.toJson()},
        ),
      );

      if (result.hasException) {
        throw Exception('Error occurred during source editing: ${result.exception}');
      }

      final Map<String, dynamic>? editedSourceData = result.data?['editSource'];
      if (editedSourceData == null) {
        throw Exception('Edited source data not found in response');
      }

      final SourceModel editedSource = SourceModel.fromJson(editedSourceData);

      return editedSource;
    } catch (e) {
      throw Exception('Error occurred during source editing: $e');
    }
  }

  @override
  Future<SourceModel> deleteSource(int sourceId) async {
    try {
      final client = _networkClient.getClient().value;
      final result = await client.mutate(
        MutationOptions(
          document: gql('''
          mutation DeleteSource(\$id: ID!) {
            deleteSource(id: \$id) {
              id
              name
              password
              tag
              description
              isHidden
            }
          }
        '''),
          variables: {'id': sourceId},
        ),
      );

      if (result.hasException) {
        throw Exception('Error occurred during source deletion: ${result.exception}');
      }

      final Map<String, dynamic>? deletedSourceData = result.data?['deleteSource'];
      if (deletedSourceData == null) {
        throw Exception('Deleted source data not found in response');
      }

      final SourceModel deletedSource = SourceModel.fromJson(deletedSourceData);

      return deletedSource;
    } catch (e) {
      throw Exception('Error occurred during source deletion: $e');
    }
  }

  @override
  Future<List<SourceModel>> getSource() async {
    try {
      final client = _networkClient.getClient().value;
      final result = await client.query(
        QueryOptions(
          document: gql('''
          query GetSources {
            getSource {
              id
              name
              password
              tag
              description
              isHidden
            }
          }
        '''),
        ),
      );

      if (result.hasException) {
        throw Exception('Error occurred during fetching sources: ${result.exception}');
      }

      final List<dynamic>? sourcesData = result.data?['getSource'];
      if (sourcesData == null) {
        throw Exception('Sources data not found in response');
      }

      final List<SourceModel> sources = sourcesData
          .map((sourceData) => SourceModel.fromJson(sourceData))
          .toList();

      return sources;
    } catch (e) {
      throw Exception('Error occurred during fetching sources: $e');
    }
  }
}
