// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Warning> _$warningSerializer = new _$WarningSerializer();

class _$WarningSerializer implements StructuredSerializer<Warning> {
  @override
  final Iterable<Type> types = const [Warning, _$Warning];
  @override
  final String wireName = 'Warning';

  @override
  Iterable<Object> serialize(Serializers serializers, Warning object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'housingId',
      serializers.serialize(object.housingId,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Warning deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WarningBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'housingId':
          result.housingId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Warning extends Warning {
  @override
  final String housingId;
  @override
  final String name;
  @override
  final String description;

  factory _$Warning([void Function(WarningBuilder) updates]) =>
      (new WarningBuilder()..update(updates)).build();

  _$Warning._({this.housingId, this.name, this.description}) : super._() {
    if (housingId == null) {
      throw new BuiltValueNullFieldError('Warning', 'housingId');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Warning', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Warning', 'description');
    }
  }

  @override
  Warning rebuild(void Function(WarningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WarningBuilder toBuilder() => new WarningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Warning &&
        housingId == other.housingId &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, housingId.hashCode), name.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Warning')
          ..add('housingId', housingId)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class WarningBuilder implements Builder<Warning, WarningBuilder> {
  _$Warning _$v;

  String _housingId;
  String get housingId => _$this._housingId;
  set housingId(String housingId) => _$this._housingId = housingId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  WarningBuilder();

  WarningBuilder get _$this {
    if (_$v != null) {
      _housingId = _$v.housingId;
      _name = _$v.name;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Warning other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Warning;
  }

  @override
  void update(void Function(WarningBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Warning build() {
    final _$result = _$v ??
        new _$Warning._(
            housingId: housingId, name: name, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
