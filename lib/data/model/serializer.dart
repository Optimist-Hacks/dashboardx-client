import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:dashboardx/data/model/server/contester.dart';
import 'package:dashboardx/data/model/server/emotion.dart';
import 'package:dashboardx/data/model/server/info.dart';

part 'serializer.g.dart';

@SerializersFor(const [
  Info,
  Contester,
  Emotion,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: false));

dynamic serialize<T>(T value) =>
    serializers.serializeWith(serializers.serializerForType(T), value);

dynamic serializeIterable<T>(Iterable<T> value) =>
    value.map((value) => serialize<T>(value)).toList();
