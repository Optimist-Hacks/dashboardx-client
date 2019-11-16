import 'package:dashboardx/data/model/state/main/main_state.dart';
import 'package:dashboardx/service/preferences_service.dart';
import 'package:rxdart/rxdart.dart';

import '../utils/log.dart';

const _tag = "main_bloc";

class MainBloc {
  final PreferencesService _preferencesService;
  final _mainStateBehaviorSubject = BehaviorSubject<MainState>();

  MainState get _mainState => _mainStateBehaviorSubject.value;

  Stream<MainState> get mainState => _mainStateBehaviorSubject;

  MainBloc(this._preferencesService) {
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
    final initMainState = MainState((b) => b);
    _mainStateBehaviorSubject.add(initMainState);
  }
}
