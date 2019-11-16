import 'dart:async';
import 'dart:convert';

import 'package:dashboardx/data/model/serializer.dart';
import 'package:dashboardx/data/model/server/contester.dart';
import 'package:dashboardx/data/model/server/info.dart';
import 'package:dashboardx/data/model/state/main/main_state.dart';
import 'package:dashboardx/service/preferences_service.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:built_collection/built_collection.dart';

import 'package:dashboardx/service/api_service.dart';
import 'package:dashboardx/utils/log.dart';

const _tag = "main_bloc";

class MainBloc {
  final PreferencesService _preferencesService;
  final ApiService _apiService;
  final _mainStateBehaviorSubject = BehaviorSubject<MainState>();
  StreamSubscription<NoiseReading> _noiseSubscription;
  NoiseMeter _noiseMeter;

  Stream<MainState> get state => _mainStateBehaviorSubject;

  MainBloc(this._preferencesService, this._apiService) {
    _init();
  }

  void dispose() {
    _mainStateBehaviorSubject.close();
    try {
      if (_noiseSubscription != null) {
        _noiseSubscription.cancel();
        _noiseSubscription = null;
      }
    } catch (err) {
      Log.e(_tag, "Can't stop recorder noise $err");
    }
  }

  void _updateMainState(updates(MainStateBuilder builder)) {
    _mainStateBehaviorSubject.add(
      _mainStateBehaviorSubject.value.rebuild(updates),
    );
  }

  void _init() async {
    Log.d(_tag, "_init");
    await PermissionHandler().requestPermissions(
        [PermissionGroup.storage, PermissionGroup.microphone]);

    final initMainState = MainState((b) => b
      ..info = Info((i) => i
        ..co2 = 0
        ..electricity = 0
        ..heating = 0
        ..water = 0
        ..leaderboard = ListBuilder<Contester>()).toBuilder()
      ..noise = 0);
    _mainStateBehaviorSubject.add(initMainState);

    final response = _preferencesService.getInfo();
    if (response != null) {
      _onNewInfo(deserialize<Info>(json.decode(response)));
    }

    _apiService.getInfo().then((info) => _onNewInfo(info));

    try {
      _noiseMeter = new NoiseMeter();
      _noiseSubscription = _noiseMeter.noiseStream.listen(_onNoise);
    } on NoiseMeterException catch (exception) {
      Log.e(_tag, "Can't start recorder noise $exception");
    }
  }

  void _onNoise(NoiseReading noiseReading) {
    Log.d(_tag, "New noise value ${noiseReading.db}");
    _updateMainState((b) => b..noise = noiseReading.db);
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
