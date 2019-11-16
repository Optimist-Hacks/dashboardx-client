import 'package:preferences/preference_service.dart';
import 'package:rxdart/rxdart.dart';

import '../utils/log.dart';

const _tag = "preferences_service";

class PreferencesService {
  static const String _darkMode = "DARK_MODE";

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
}
