import 'dart:convert';

import 'package:dashboardx/data/model/serializer.dart';
import 'package:dashboardx/data/model/server/contester.dart';
import 'package:dashboardx/data/model/server/info.dart';
import 'package:dashboardx/data/model/state/main/main_state.dart';
import 'package:dashboardx/service/preferences_service.dart';
import 'package:rxdart/rxdart.dart';
import 'package:built_collection/built_collection.dart';

import 'package:dashboardx/service/api_service.dart';
import 'package:dashboardx/utils/log.dart';

const _tag = "main_bloc";

class MainBloc {
  final PreferencesService _preferencesService;
  final ApiService _apiService;
  final _mainStateBehaviorSubject = BehaviorSubject<MainState>();

  Stream<MainState> get state => _mainStateBehaviorSubject;

  MainBloc(this._preferencesService, this._apiService) {
    _init();
  }

  void dispose() {
    _mainStateBehaviorSubject.close();
  }

  void _updateMainState(updates(MainStateBuilder builder)) {
    _mainStateBehaviorSubject.add(
      _mainStateBehaviorSubject.value.rebuild(updates),
    );
  }

  void _init() async {
    Log.d(_tag, "_init");

    final initMainState = MainState((b) => b
      ..info = Info((i) => i
        ..co2 = 0
        ..electricity = 0
        ..heating = 0
        ..water = 0
        ..leaderboard = ListBuilder<Contester>()).toBuilder());
    _mainStateBehaviorSubject.add(initMainState);

    final response = _preferencesService.getInfo();
    if (response != null) {
      _onNewInfo(deserialize<Info>(json.decode(response)));
    }

    _apiService.getInfo().then((info) => _onNewInfo(info));
  }

  void _onNewInfo(Info info) {
    Log.d(_tag, "On new info: $info");
    if (info == null) {
      Log.e(_tag, "Info ins null!!!");
    }
    _preferencesService.setInfo(jsonEncode(serialize<Info>(info)));
    _updateMainState((b) => b..info = info.toBuilder());
  }
}
