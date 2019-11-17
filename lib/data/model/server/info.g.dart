// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Info> _$infoSerializer = new _$InfoSerializer();

class _$InfoSerializer implements StructuredSerializer<Info> {
  @override
  final Iterable<Type> types = const [Info, _$Info];
  @override
  final String wireName = 'Info';

  @override
  Iterable<Object> serialize(Serializers serializers, Info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'co2EmissionDaily',
      serializers.serialize(object.co2EmissionDaily,
          specifiedType: const FullType(double)),
      'electricityDaily',
      serializers.serialize(object.electricityDaily,
          specifiedType: const FullType(double)),
      'heatingDaily',
      serializers.serialize(object.heatingDaily,
          specifiedType: const FullType(double)),
      'waterDaily',
      serializers.serialize(object.waterDaily,
          specifiedType: const FullType(double)),
      'leaderboard',
      serializers.serialize(object.leaderboard,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Contester)])),
      'emotionDaily',
      serializers.serialize(object.emotionDaily,
          specifiedType: const FullType(Emotion)),
    ];
    if (object.warning != null) {
      result
        ..add('warning')
        ..add(serializers.serialize(object.warning,
            specifiedType: const FullType(Warning)));
    }
    return result;
  }

  @override
  Info deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'co2EmissionDaily':
          result.co2EmissionDaily = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'electricityDaily':
          result.electricityDaily = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'heatingDaily':
          result.heatingDaily = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'waterDaily':
          result.waterDaily = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'leaderboard':
          result.leaderboard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Contester)]))
              as BuiltList<dynamic>);
          break;
        case 'emotionDaily':
          result.emotionDaily.replace(serializers.deserialize(value,
              specifiedType: const FullType(Emotion)) as Emotion);
          break;
        case 'warning':
          result.warning.replace(serializers.deserialize(value,
              specifiedType: const FullType(Warning)) as Warning);
          break;
      }
    }

    return result.build();
  }
}

class _$Info extends Info {
  @override
  final double co2EmissionDaily;
  @override
  final double electricityDaily;
  @override
  final double heatingDaily;
  @override
  final double waterDaily;
  @override
  final BuiltList<Contester> leaderboard;
  @override
  final Emotion emotionDaily;
  @override
  final Warning warning;

  factory _$Info([void Function(InfoBuilder) updates]) =>
      (new InfoBuilder()..update(updates)).build();

  _$Info._(
      {this.co2EmissionDaily,
      this.electricityDaily,
      this.heatingDaily,
      this.waterDaily,
      this.leaderboard,
      this.emotionDaily,
      this.warning})
      : super._() {
    if (co2EmissionDaily == null) {
      throw new BuiltValueNullFieldError('Info', 'co2EmissionDaily');
    }
    if (electricityDaily == null) {
      throw new BuiltValueNullFieldError('Info', 'electricityDaily');
    }
    if (heatingDaily == null) {
      throw new BuiltValueNullFieldError('Info', 'heatingDaily');
    }
    if (waterDaily == null) {
      throw new BuiltValueNullFieldError('Info', 'waterDaily');
    }
    if (leaderboard == null) {
      throw new BuiltValueNullFieldError('Info', 'leaderboard');
    }
    if (emotionDaily == null) {
      throw new BuiltValueNullFieldError('Info', 'emotionDaily');
    }
  }

  @override
  Info rebuild(void Function(InfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoBuilder toBuilder() => new InfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Info &&
        co2EmissionDaily == other.co2EmissionDaily &&
        electricityDaily == other.electricityDaily &&
        heatingDaily == other.heatingDaily &&
        waterDaily == other.waterDaily &&
        leaderboard == other.leaderboard &&
        emotionDaily == other.emotionDaily &&
        warning == other.warning;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, co2EmissionDaily.hashCode),
                            electricityDaily.hashCode),
                        heatingDaily.hashCode),
                    waterDaily.hashCode),
                leaderboard.hashCode),
            emotionDaily.hashCode),
        warning.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Info')
          ..add('co2EmissionDaily', co2EmissionDaily)
          ..add('electricityDaily', electricityDaily)
          ..add('heatingDaily', heatingDaily)
          ..add('waterDaily', waterDaily)
          ..add('leaderboard', leaderboard)
          ..add('emotionDaily', emotionDaily)
          ..add('warning', warning))
        .toString();
  }
}

class InfoBuilder implements Builder<Info, InfoBuilder> {
  _$Info _$v;

  double _co2EmissionDaily;
  double get co2EmissionDaily => _$this._co2EmissionDaily;
  set co2EmissionDaily(double co2EmissionDaily) =>
      _$this._co2EmissionDaily = co2EmissionDaily;

  double _electricityDaily;
  double get electricityDaily => _$this._electricityDaily;
  set electricityDaily(double electricityDaily) =>
      _$this._electricityDaily = electricityDaily;

  double _heatingDaily;
  double get heatingDaily => _$this._heatingDaily;
  set heatingDaily(double heatingDaily) => _$this._heatingDaily = heatingDaily;

  double _waterDaily;
  double get waterDaily => _$this._waterDaily;
  set waterDaily(double waterDaily) => _$this._waterDaily = waterDaily;

  ListBuilder<Contester> _leaderboard;
  ListBuilder<Contester> get leaderboard =>
      _$this._leaderboard ??= new ListBuilder<Contester>();
  set leaderboard(ListBuilder<Contester> leaderboard) =>
      _$this._leaderboard = leaderboard;

  EmotionBuilder _emotionDaily;
  EmotionBuilder get emotionDaily =>
      _$this._emotionDaily ??= new EmotionBuilder();
  set emotionDaily(EmotionBuilder emotionDaily) =>
      _$this._emotionDaily = emotionDaily;

  WarningBuilder _warning;
  WarningBuilder get warning => _$this._warning ??= new WarningBuilder();
  set warning(WarningBuilder warning) => _$this._warning = warning;

  InfoBuilder();

  InfoBuilder get _$this {
    if (_$v != null) {
      _co2EmissionDaily = _$v.co2EmissionDaily;
      _electricityDaily = _$v.electricityDaily;
      _heatingDaily = _$v.heatingDaily;
      _waterDaily = _$v.waterDaily;
      _leaderboard = _$v.leaderboard?.toBuilder();
      _emotionDaily = _$v.emotionDaily?.toBuilder();
      _warning = _$v.warning?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Info other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Info;
  }

  @override
  void update(void Function(InfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Info build() {
    _$Info _$result;
    try {
      _$result = _$v ??
          new _$Info._(
              co2EmissionDaily: co2EmissionDaily,
              electricityDaily: electricityDaily,
              heatingDaily: heatingDaily,
              waterDaily: waterDaily,
              leaderboard: leaderboard.build(),
              emotionDaily: emotionDaily.build(),
              warning: _warning?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'leaderboard';
        leaderboard.build();
        _$failedField = 'emotionDaily';
        emotionDaily.build();
        _$failedField = 'warning';
        _warning?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Info', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
