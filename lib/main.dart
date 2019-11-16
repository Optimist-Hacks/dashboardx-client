import 'package:dashboardx/app.dart';
import 'package:flutter/material.dart';
import 'package:preferences/preference_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefService.init(prefix: 'pref_');
  runApp(App());
}
