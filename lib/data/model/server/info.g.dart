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
      'co2',
      serializers.serialize(object.co2, specifiedType: const FullType(double)),
      'electricity',
      serializers.serialize(object.electricity,
          specifiedType: const FullType(double)),
      'heating',
      serializers.serialize(object.heating,
          specifiedType: const FullType(double)),
      'water',
      serializers.serialize(object.water,
          specifiedType: const FullType(double)),
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
        case 'co2':
          result.co2 = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Info extends Info {
  @override
  final double co2;
  @override
  final double electricity;
  @override
  final double heating;
  @override
  final double water;

  factory _$Info([void Function(InfoBuilder) updates]) =>
      (new InfoBuilder()..update(updates)).build();

  _$Info._({this.co2, this.electricity, this.heating, this.water}) : super._() {
    if (co2 == null) {
      throw new BuiltValueNullFieldError('Info', 'co2');
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
        co2 == other.co2 &&
        electricity == other.electricity &&
        heating == other.heating &&
        water == other.water;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, co2.hashCode), electricity.hashCode), heating.hashCode),
        water.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Info')
          ..add('co2', co2)
          ..add('electricity', electricity)
          ..add('heating', heating)
          ..add('water', water))
        .toString();
  }
}

class InfoBuilder implements Builder<Info, InfoBuilder> {
  _$Info _$v;

  double _co2;
  double get co2 => _$this._co2;
  set co2(double co2) => _$this._co2 = co2;

  double _electricity;
  double get electricity => _$this._electricity;
  set electricity(double electricity) => _$this._electricity = electricity;

  double _heating;
  double get heating => _$this._heating;
  set heating(double heating) => _$this._heating = heating;

  double _water;
  double get water => _$this._water;
  set water(double water) => _$this._water = water;

  InfoBuilder();

  InfoBuilder get _$this {
    if (_$v != null) {
      _co2 = _$v.co2;
      _electricity = _$v.electricity;
      _heating = _$v.heating;
      _water = _$v.water;
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
    final _$result = _$v ??
        new _$Info._(
            co2: co2, electricity: electricity, heating: heating, water: water);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
