import 'package:flutter/material.dart';
import 'app.dart';

Future<void> initApp() async {
  WidgetsBinding widgetsFlutterBinding =
      WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}
