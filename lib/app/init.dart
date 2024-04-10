import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'app.dart';

Future<void> initApp() async {
  WidgetsBinding widgetsFlutterBinding =
      WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}
