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
      'co2Emission',
      serializers.serialize(object.co2Emission,
          specifiedType: const FullType(double)),
      'electricity',
      serializers.serialize(object.electricity,
          specifiedType: const FullType(double)),
      'heating',
      serializers.serialize(object.heating,
          specifiedType: const FullType(double)),
      'water',
      serializers.serialize(object.water,
          specifiedType: const FullType(double)),
      'leaderboard',
      serializers.serialize(object.leaderboard,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Contester)])),
    ];

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
        case 'co2Emission':
          result.co2Emission = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'electricity':
          result.electricity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'heating':
          result.heating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'water':
          result.water = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'leaderboard':
          result.leaderboard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Contester)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Info extends Info {
  @override
  final double co2Emission;
  @override
  final double electricity;
  @override
  final double heating;
  @override
  final double water;
  @override
  final BuiltList<Contester> leaderboard;

  factory _$Info([void Function(InfoBuilder) updates]) =>
      (new InfoBuilder()..update(updates)).build();

  _$Info._(
      {this.co2Emission,
      this.electricity,
      this.heating,
      this.water,
      this.leaderboard})
      : super._() {
    if (co2Emission == null) {
      throw new BuiltValueNullFieldError('Info', 'co2Emission');
    }
    if (electricity == null) {
      throw new BuiltValueNullFieldError('Info', 'electricity');
    }
    if (heating == null) {
      throw new BuiltValueNullFieldError('Info', 'heating');
    }
    if (water == null) {
      throw new BuiltValueNullFieldError('Info', 'water');
    }
    if (leaderboard == null) {
      throw new BuiltValueNullFieldError('Info', 'leaderboard');
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
        co2Emission == other.co2Emission &&
        electricity == other.electricity &&
        heating == other.heating &&
        water == other.water &&
        leaderboard == other.leaderboard;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, co2Emission.hashCode), electricity.hashCode),
                heating.hashCode),
            water.hashCode),
        leaderboard.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Info')
          ..add('co2Emission', co2Emission)
          ..add('electricity', electricity)
          ..add('heating', heating)
          ..add('water', water)
          ..add('leaderboard', leaderboard))
        .toString();
  }
}

class InfoBuilder implements Builder<Info, InfoBuilder> {
  _$Info _$v;

  double _co2Emission;
  double get co2Emission => _$this._co2Emission;
  set co2Emission(double co2Emission) => _$this._co2Emission = co2Emission;

  double _electricity;
  double get electricity => _$this._electricity;
  set electricity(double electricity) => _$this._electricity = electricity;

  double _heating;
  double get heating => _$this._heating;
  set heating(double heating) => _$this._heating = heating;

  double _water;
  double get water => _$this._water;
  set water(double water) => _$this._water = water;

  ListBuilder<Contester> _leaderboard;
  ListBuilder<Contester> get leaderboard =>
      _$this._leaderboard ??= new ListBuilder<Contester>();
  set leaderboard(ListBuilder<Contester> leaderboard) =>
      _$this._leaderboard = leaderboard;

  InfoBuilder();

  InfoBuilder get _$this {
    if (_$v != null) {
      _co2Emission = _$v.co2Emission;
      _electricity = _$v.electricity;
      _heating = _$v.heating;
      _water = _$v.water;
      _leaderboard = _$v.leaderboard?.toBuilder();
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
              co2Emission: co2Emission,
              electricity: electricity,
              heating: heating,
              water: water,
              leaderboard: leaderboard.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'leaderboard';
        leaderboard.build();
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
