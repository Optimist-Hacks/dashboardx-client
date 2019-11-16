// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contester.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Contester> _$contesterSerializer = new _$ContesterSerializer();

class _$ContesterSerializer implements StructuredSerializer<Contester> {
  @override
  final Iterable<Type> types = const [Contester, _$Contester];
  @override
  final String wireName = 'Contester';

  @override
  Iterable<Object> serialize(Serializers serializers, Contester object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'co2',
      serializers.serialize(object.co2, specifiedType: const FullType(double)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'place',
      serializers.serialize(object.place, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Contester deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContesterBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'place':
          result.place = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Contester extends Contester {
  @override
  final double co2;
  @override
  final String name;
  @override
  final int place;

  factory _$Contester([void Function(ContesterBuilder) updates]) =>
      (new ContesterBuilder()..update(updates)).build();

  _$Contester._({this.co2, this.name, this.place}) : super._() {
    if (co2 == null) {
      throw new BuiltValueNullFieldError('Contester', 'co2');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Contester', 'name');
    }
    if (place == null) {
      throw new BuiltValueNullFieldError('Contester', 'place');
    }
  }

  @override
  Contester rebuild(void Function(ContesterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContesterBuilder toBuilder() => new ContesterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Contester &&
        co2 == other.co2 &&
        name == other.name &&
        place == other.place;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, co2.hashCode), name.hashCode), place.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Contester')
          ..add('co2', co2)
          ..add('name', name)
          ..add('place', place))
        .toString();
  }
}

class ContesterBuilder implements Builder<Contester, ContesterBuilder> {
  _$Contester _$v;

  double _co2;
  double get co2 => _$this._co2;
  set co2(double co2) => _$this._co2 = co2;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _place;
  int get place => _$this._place;
  set place(int place) => _$this._place = place;

  ContesterBuilder();

  ContesterBuilder get _$this {
    if (_$v != null) {
      _co2 = _$v.co2;
      _name = _$v.name;
      _place = _$v.place;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Contester other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Contester;
  }

  @override
  void update(void Function(ContesterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Contester build() {
    final _$result =
        _$v ?? new _$Contester._(co2: co2, name: name, place: place);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
