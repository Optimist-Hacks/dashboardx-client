import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contester.g.dart';

abstract class Contester implements Built<Contester, ContesterBuilder> {
  static Serializer<Contester> get serializer => _$contesterSerializer;

  double get co2EmissionMonthly;

  String get housingName;

  String get housingId;

  Contester._();

  factory Contester([void Function(ContesterBuilder) updates]) = _$Contester;
}
