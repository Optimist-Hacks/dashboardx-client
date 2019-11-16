import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dashboardx/data/model/server/contester.dart';

part 'info.g.dart';

abstract class Info implements Built<Info, InfoBuilder> {
  static Serializer<Info> get serializer => _$infoSerializer;

  double get co2Emission;

  double get electricity;

  double get heating;

  double get water;

  BuiltList<Contester> get leaderboard;

  Info._();

  factory Info([void Function(InfoBuilder) updates]) = _$Info;
}
