// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Emotion> _$emotionSerializer = new _$EmotionSerializer();

class _$EmotionSerializer implements StructuredSerializer<Emotion> {
  @override
  final Iterable<Type> types = const [Emotion, _$Emotion];
  @override
  final String wireName = 'Emotion';

  @override
  Iterable<Object> serialize(Serializers serializers, Emotion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'anger',
      serializers.serialize(object.anger,
          specifiedType: const FullType(double)),
      'contempt',
      serializers.serialize(object.contempt,
          specifiedType: const FullType(double)),
      'disgust',
      serializers.serialize(object.disgust,
          specifiedType: const FullType(double)),
      'fear',
      serializers.serialize(object.fear, specifiedType: const FullType(double)),
      'happiness',
      serializers.serialize(object.happiness,
          specifiedType: const FullType(double)),
      'neutral',
      serializers.serialize(object.neutral,
          specifiedType: const FullType(double)),
      'sadness',
      serializers.serialize(object.sadness,
          specifiedType: const FullType(double)),
      'surprise',
      serializers.serialize(object.surprise,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Emotion deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmotionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'anger':
          result.anger = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'contempt':
          result.contempt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'disgust':
          result.disgust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'fear':
          result.fear = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'happiness':
          result.happiness = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'neutral':
          result.neutral = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'sadness':
          result.sadness = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'surprise':
          result.surprise = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Emotion extends Emotion {
  @override
  final double anger;
  @override
  final double contempt;
  @override
  final double disgust;
  @override
  final double fear;
  @override
  final double happiness;
  @override
  final double neutral;
  @override
  final double sadness;
  @override
  final double surprise;

  factory _$Emotion([void Function(EmotionBuilder) updates]) =>
      (new EmotionBuilder()..update(updates)).build();

  _$Emotion._(
      {this.anger,
      this.contempt,
      this.disgust,
      this.fear,
      this.happiness,
      this.neutral,
      this.sadness,
      this.surprise})
      : super._() {
    if (anger == null) {
      throw new BuiltValueNullFieldError('Emotion', 'anger');
    }
    if (contempt == null) {
      throw new BuiltValueNullFieldError('Emotion', 'contempt');
    }
    if (disgust == null) {
      throw new BuiltValueNullFieldError('Emotion', 'disgust');
    }
    if (fear == null) {
      throw new BuiltValueNullFieldError('Emotion', 'fear');
    }
    if (happiness == null) {
      throw new BuiltValueNullFieldError('Emotion', 'happiness');
    }
    if (neutral == null) {
      throw new BuiltValueNullFieldError('Emotion', 'neutral');
    }
    if (sadness == null) {
      throw new BuiltValueNullFieldError('Emotion', 'sadness');
    }
    if (surprise == null) {
      throw new BuiltValueNullFieldError('Emotion', 'surprise');
    }
  }

  @override
  Emotion rebuild(void Function(EmotionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmotionBuilder toBuilder() => new EmotionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Emotion &&
        anger == other.anger &&
        contempt == other.contempt &&
        disgust == other.disgust &&
        fear == other.fear &&
        happiness == other.happiness &&
        neutral == other.neutral &&
        sadness == other.sadness &&
        surprise == other.surprise;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, anger.hashCode), contempt.hashCode),
                            disgust.hashCode),
                        fear.hashCode),
                    happiness.hashCode),
                neutral.hashCode),
            sadness.hashCode),
        surprise.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Emotion')
          ..add('anger', anger)
          ..add('contempt', contempt)
          ..add('disgust', disgust)
          ..add('fear', fear)
          ..add('happiness', happiness)
          ..add('neutral', neutral)
          ..add('sadness', sadness)
          ..add('surprise', surprise))
        .toString();
  }
}

class EmotionBuilder implements Builder<Emotion, EmotionBuilder> {
  _$Emotion _$v;

  double _anger;
  double get anger => _$this._anger;
  set anger(double anger) => _$this._anger = anger;

  double _contempt;
  double get contempt => _$this._contempt;
  set contempt(double contempt) => _$this._contempt = contempt;

  double _disgust;
  double get disgust => _$this._disgust;
  set disgust(double disgust) => _$this._disgust = disgust;

  double _fear;
  double get fear => _$this._fear;
  set fear(double fear) => _$this._fear = fear;

  double _happiness;
  double get happiness => _$this._happiness;
  set happiness(double happiness) => _$this._happiness = happiness;

  double _neutral;
  double get neutral => _$this._neutral;
  set neutral(double neutral) => _$this._neutral = neutral;

  double _sadness;
  double get sadness => _$this._sadness;
  set sadness(double sadness) => _$this._sadness = sadness;

  double _surprise;
  double get surprise => _$this._surprise;
  set surprise(double surprise) => _$this._surprise = surprise;

  EmotionBuilder();

  EmotionBuilder get _$this {
    if (_$v != null) {
      _anger = _$v.anger;
      _contempt = _$v.contempt;
      _disgust = _$v.disgust;
      _fear = _$v.fear;
      _happiness = _$v.happiness;
      _neutral = _$v.neutral;
      _sadness = _$v.sadness;
      _surprise = _$v.surprise;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Emotion other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Emotion;
  }

  @override
  void update(void Function(EmotionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Emotion build() {
    final _$result = _$v ??
        new _$Emotion._(
            anger: anger,
            contempt: contempt,
            disgust: disgust,
            fear: fear,
            happiness: happiness,
            neutral: neutral,
            sadness: sadness,
            surprise: surprise);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
