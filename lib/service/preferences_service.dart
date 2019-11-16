import 'package:preferences/preference_service.dart';
import 'package:rxdart/rxdart.dart';

import 'package:dashboardx/utils/log.dart';

const _tag = "preferences_service";

class PreferencesService {
  static const String _darkMode = "DARK_MODE";
  static const String _info = "INFO";

  final BehaviorSubject<bool> darkModeSubject;

  PreferencesService()
      : darkModeSubject = BehaviorSubject<bool>.seeded(
            PrefService.getBool(_darkMode) ?? false);

  void setDarkMode(bool darkMode) {
    Log.d(_tag, "setDarkMode = $darkMode");
    PrefService.setBool(_darkMode, darkMode);
    darkModeSubject.add(darkMode);
  }

  bool darkMode() {
    return darkModeSubject.value;
  }

  String getInfo() {
    return PrefService.getString(_info);
  }

  void setInfo(String data) {
    PrefService.setString(_info, data);
  }
}
