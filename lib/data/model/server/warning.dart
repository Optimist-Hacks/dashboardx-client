import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'warning.g.dart';

abstract class Warning implements Built<Warning, WarningBuilder> {
  static Serializer<Warning> get serializer => _$warningSerializer;

  String get housingId;

  String get name;

  String get description;

  Warning._();

  factory Warning([void Function(WarningBuilder) updates]) = _$Warning;
}
