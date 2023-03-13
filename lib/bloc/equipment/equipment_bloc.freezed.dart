// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EquipmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentEventCopyWith<$Res> {
  factory $EquipmentEventCopyWith(
          EquipmentEvent value, $Res Function(EquipmentEvent) then) =
      _$EquipmentEventCopyWithImpl<$Res, EquipmentEvent>;
}

/// @nodoc
class _$EquipmentEventCopyWithImpl<$Res, $Val extends EquipmentEvent>
    implements $EquipmentEventCopyWith<$Res> {
  _$EquipmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$EquipmentEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'EquipmentEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements EquipmentEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
mixin _$EquipmentState {
  List<ComponentItem> get resultsList => throw _privateConstructorUsedError;
  List<ComponentItem> get componentsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentStateCopyWith<EquipmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentStateCopyWith<$Res> {
  factory $EquipmentStateCopyWith(
          EquipmentState value, $Res Function(EquipmentState) then) =
      _$EquipmentStateCopyWithImpl<$Res, EquipmentState>;
  @useResult
  $Res call(
      {List<ComponentItem> resultsList, List<ComponentItem> componentsList});
}

/// @nodoc
class _$EquipmentStateCopyWithImpl<$Res, $Val extends EquipmentState>
    implements $EquipmentStateCopyWith<$Res> {
  _$EquipmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultsList = null,
    Object? componentsList = null,
  }) {
    return _then(_value.copyWith(
      resultsList: null == resultsList
          ? _value.resultsList
          : resultsList // ignore: cast_nullable_to_non_nullable
              as List<ComponentItem>,
      componentsList: null == componentsList
          ? _value.componentsList
          : componentsList // ignore: cast_nullable_to_non_nullable
              as List<ComponentItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EquipmentStateCopyWith<$Res>
    implements $EquipmentStateCopyWith<$Res> {
  factory _$$_EquipmentStateCopyWith(
          _$_EquipmentState value, $Res Function(_$_EquipmentState) then) =
      __$$_EquipmentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ComponentItem> resultsList, List<ComponentItem> componentsList});
}

/// @nodoc
class __$$_EquipmentStateCopyWithImpl<$Res>
    extends _$EquipmentStateCopyWithImpl<$Res, _$_EquipmentState>
    implements _$$_EquipmentStateCopyWith<$Res> {
  __$$_EquipmentStateCopyWithImpl(
      _$_EquipmentState _value, $Res Function(_$_EquipmentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultsList = null,
    Object? componentsList = null,
  }) {
    return _then(_$_EquipmentState(
      resultsList: null == resultsList
          ? _value.resultsList
          : resultsList // ignore: cast_nullable_to_non_nullable
              as List<ComponentItem>,
      componentsList: null == componentsList
          ? _value.componentsList
          : componentsList // ignore: cast_nullable_to_non_nullable
              as List<ComponentItem>,
    ));
  }
}

/// @nodoc

class _$_EquipmentState implements _EquipmentState {
  _$_EquipmentState(
      {this.resultsList = const [], this.componentsList = const []});

  @override
  @JsonKey()
  final List<ComponentItem> resultsList;
  @override
  @JsonKey()
  final List<ComponentItem> componentsList;

  @override
  String toString() {
    return 'EquipmentState(resultsList: $resultsList, componentsList: $componentsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EquipmentState &&
            const DeepCollectionEquality()
                .equals(other.resultsList, resultsList) &&
            const DeepCollectionEquality()
                .equals(other.componentsList, componentsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resultsList),
      const DeepCollectionEquality().hash(componentsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EquipmentStateCopyWith<_$_EquipmentState> get copyWith =>
      __$$_EquipmentStateCopyWithImpl<_$_EquipmentState>(this, _$identity);
}

abstract class _EquipmentState implements EquipmentState {
  factory _EquipmentState(
      {final List<ComponentItem> resultsList,
      final List<ComponentItem> componentsList}) = _$_EquipmentState;

  @override
  List<ComponentItem> get resultsList;
  @override
  List<ComponentItem> get componentsList;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentStateCopyWith<_$_EquipmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
