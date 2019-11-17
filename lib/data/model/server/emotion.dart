import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'emotion.g.dart';

abstract class Emotion implements Built<Emotion, EmotionBuilder> {
  static Serializer<Emotion> get serializer => _$emotionSerializer;

  double get anger;

  double get contempt;

  double get disgust;

  double get fear;

  double get happiness;

  double get neutral;

  double get sadness;

  double get surprise;

  double angryTotal() {
    return (anger + fear);
  }

  double sadTotal() {
    return (sadness + disgust + contempt);
  }

  double calmTotal() {
    return neutral;
  }

  double funnyTotal() {
    return (surprise + happiness);
  }

  Emotion._();

  factory Emotion([void Function(EmotionBuilder) updates]) = _$Emotion;
}
