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
      'co2EmissionMonthly',
      serializers.serialize(object.co2EmissionMonthly,
          specifiedType: const FullType(double)),
      'housingName',
      serializers.serialize(object.housingName,
          specifiedType: const FullType(String)),
      'housingId',
      serializers.serialize(object.housingId,
          specifiedType: const FullType(String)),
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
        case 'co2EmissionMonthly':
          result.co2EmissionMonthly = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'housingName':
          result.housingName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'housingId':
          result.housingId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Contester extends Contester {
  @override
  final double co2EmissionMonthly;
  @override
  final String housingName;
  @override
  final String housingId;

  factory _$Contester([void Function(ContesterBuilder) updates]) =>
      (new ContesterBuilder()..update(updates)).build();

  _$Contester._({this.co2EmissionMonthly, this.housingName, this.housingId})
      : super._() {
    if (co2EmissionMonthly == null) {
      throw new BuiltValueNullFieldError('Contester', 'co2EmissionMonthly');
    }
    if (housingName == null) {
      throw new BuiltValueNullFieldError('Contester', 'housingName');
    }
    if (housingId == null) {
      throw new BuiltValueNullFieldError('Contester', 'housingId');
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
        co2EmissionMonthly == other.co2EmissionMonthly &&
        housingName == other.housingName &&
        housingId == other.housingId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, co2EmissionMonthly.hashCode), housingName.hashCode),
        housingId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Contester')
          ..add('co2EmissionMonthly', co2EmissionMonthly)
          ..add('housingName', housingName)
          ..add('housingId', housingId))
        .toString();
  }
}

class ContesterBuilder implements Builder<Contester, ContesterBuilder> {
  _$Contester _$v;

  double _co2EmissionMonthly;
  double get co2EmissionMonthly => _$this._co2EmissionMonthly;
  set co2EmissionMonthly(double co2EmissionMonthly) =>
      _$this._co2EmissionMonthly = co2EmissionMonthly;

  String _housingName;
  String get housingName => _$this._housingName;
  set housingName(String housingName) => _$this._housingName = housingName;

  String _housingId;
  String get housingId => _$this._housingId;
  set housingId(String housingId) => _$this._housingId = housingId;

  ContesterBuilder();

  ContesterBuilder get _$this {
    if (_$v != null) {
      _co2EmissionMonthly = _$v.co2EmissionMonthly;
      _housingName = _$v.housingName;
      _housingId = _$v.housingId;
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
    final _$result = _$v ??
        new _$Contester._(
            co2EmissionMonthly: co2EmissionMonthly,
            housingName: housingName,
            housingId: housingId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
