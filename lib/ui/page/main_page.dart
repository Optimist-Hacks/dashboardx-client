import 'package:dashboardx/domain/main_bloc.dart';
import 'package:dashboardx/service/preferences_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _tag = "main_page";

class MainPage extends StatefulWidget {
  static const routeName = '/main';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainBloc _mainBloc;
  PreferencesService _preferencesService;

  @override
  void didChangeDependencies() {
    _preferencesService ??= Provider.of<PreferencesService>(context);
    _mainBloc ??= MainBloc(_preferencesService);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Hello"));
  }
}
