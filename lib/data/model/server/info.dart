import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'info.g.dart';

abstract class Info implements Built<Info, InfoBuilder> {
  static Serializer<Info> get serializer => _$infoSerializer;

  double get co2;

  double get electricity;

  double get heating;

  double get water;

  Info._();

  factory Info([void Function(InfoBuilder) updates]) = _$Info;
}
