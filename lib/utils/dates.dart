import 'package:intl/intl.dart';

class Dates {
  static final DateFormat _dateFormat = DateFormat('MM.dd.yyyy');

  static String currentData() {
    return _dateFormat.format(DateTime.now());
  }
}
