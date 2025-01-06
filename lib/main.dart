import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app.dart';

import 'inject/configurations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}
