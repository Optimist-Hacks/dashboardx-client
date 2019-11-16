import 'package:built_value/built_value.dart';
import 'package:dashboardx/data/model/server/info.dart';

part 'main_state.g.dart';

abstract class MainState implements Built<MainState, MainStateBuilder> {
  MainState._();

  Info get info;

  factory MainState([void Function(MainStateBuilder) updates]) = _$MainState;
}
