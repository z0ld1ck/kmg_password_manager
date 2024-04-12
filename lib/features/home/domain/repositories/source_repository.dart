import 'package:flutter/material.dart';

import '../../data/models/source_model.dart';


abstract class SourceRepository{
  Future<List<SourceModel>> getSource();

  Future<SourceModel> createSource(SourceModel sourceModel);

  Future<SourceModel> editSource(SourceModel sourceModel);

  Future<SourceModel> deleteSource(int sourceId);

}