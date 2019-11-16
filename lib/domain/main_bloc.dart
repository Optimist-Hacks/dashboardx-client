import 'package:dashboardx/data/model/server/info.dart';
import 'package:dashboardx/data/model/state/main/main_state.dart';
import 'package:dashboardx/service/preferences_service.dart';
import 'package:rxdart/rxdart.dart';

import '../service/api_service.dart';
import '../utils/log.dart';

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
        ..water = 0).toBuilder());
    _mainStateBehaviorSubject.add(initMainState);
    _apiService.getInfo().then((info) => _onNewInfo(info));
  }

  void _onNewInfo(Info info) {
    Log.d(_tag, "On new info: $info");
    if (info == null) {
      Log.e(_tag, "Info ins null!!!");
    }
    _updateMainState((b) => b..info = info.toBuilder());
  }
}
