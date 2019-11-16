import 'package:built_value/built_value.dart';

part 'main_state.g.dart';

abstract class MainState implements Built<MainState, MainStateBuilder> {
  MainState._();

  factory MainState([void Function(MainStateBuilder) updates]) = _$MainState;
}
