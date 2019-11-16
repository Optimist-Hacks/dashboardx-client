import 'dart:async';

import 'package:dashboardx/data/model/state/main/main_state.dart';
import 'package:dashboardx/domain/main_bloc.dart';
import 'package:dashboardx/service/preferences_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dashboardx/service/api_service.dart';
import 'package:rxdart/rxdart.dart';

const _tag = "main_page";

class MainPage extends StatefulWidget {
  static const routeName = '/main';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final CompositeSubscription _subscriptions = CompositeSubscription();
  MainBloc _mainBloc;
  MainState _state;
  PreferencesService _preferencesService;

  @override
  void didChangeDependencies() {
    _preferencesService ??= Provider.of<PreferencesService>(context);
    if (_mainBloc == null) {
      _mainBloc ??= MainBloc(
        _preferencesService,
        Provider.of<ApiService>(context),
      );
      StreamSubscription subscription = _mainBloc.state.listen((state) {
        setState(() => _state = state);
      });
      _subscriptions.add(subscription);
    }

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _subscriptions?.dispose();
    _mainBloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_state == null) {
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(body: _body());
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("co2 ${_state.info.co2Emission}"),
          Text("electricity ${_state.info.electricity}"),
          Text("electricity ${_state.info.heating}"),
          Text("water ${_state.info.water}"),
          Text("noise ${_state.noise}db"),
          Text("anger ${_state.info.emotion.anger}"),
          Text("contempt ${_state.info.emotion.contempt}"),
          Text("disgust ${_state.info.emotion.disgust}"),
          Text("fear ${_state.info.emotion.fear}"),
          Text("happiness ${_state.info.emotion.happiness}"),
          Text("neutral ${_state.info.emotion.neutral}"),
          Text("sadness ${_state.info.emotion.sadness}"),
          Text("surprise ${_state.info.emotion.surprise}"),
        ],
      ),
    );
  }
}
