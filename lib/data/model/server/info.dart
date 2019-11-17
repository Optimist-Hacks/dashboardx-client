import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dashboardx/data/model/server/contester.dart';
import 'package:dashboardx/data/model/server/emotion.dart';

part 'info.g.dart';

abstract class Info implements Built<Info, InfoBuilder> {
  static Serializer<Info> get serializer => _$infoSerializer;

  double get co2EmissionDaily;

  double get electricityDaily;

  double get heatingDaily;

  double get waterDaily;

  BuiltList<Contester> get leaderboard;

  Emotion get emotionDaily;

  @nullable
  String get warning;

  Info._();

  factory Info([void Function(InfoBuilder) updates]) = _$Info;
}
