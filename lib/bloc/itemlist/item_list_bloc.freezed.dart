// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Ended value) ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListEventCopyWith<$Res> {
  factory $ItemListEventCopyWith(
          ItemListEvent value, $Res Function(ItemListEvent) then) =
      _$ItemListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemListEventCopyWithImpl<$Res>
    implements $ItemListEventCopyWith<$Res> {
  _$ItemListEventCopyWithImpl(this._value, this._then);

  final ItemListEvent _value;
  // ignore: unused_field
  final $Res Function(ItemListEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$ItemListEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ItemListEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() ended,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Ended value) ended,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ItemListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_EndedCopyWith<$Res> {
  factory _$$_EndedCopyWith(_$_Ended value, $Res Function(_$_Ended) then) =
      __$$_EndedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EndedCopyWithImpl<$Res> extends _$ItemListEventCopyWithImpl<$Res>
    implements _$$_EndedCopyWith<$Res> {
  __$$_EndedCopyWithImpl(_$_Ended _value, $Res Function(_$_Ended) _then)
      : super(_value, (v) => _then(v as _$_Ended));

  @override
  _$_Ended get _value => super._value as _$_Ended;
}

/// @nodoc

class _$_Ended implements _Ended {
  const _$_Ended();

  @override
  String toString() {
    return 'ItemListEvent.ended()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Ended);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() ended,
  }) {
    return ended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
  }) {
    return ended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Ended value) ended,
  }) {
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
  }) {
    return ended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class _Ended implements ItemListEvent {
  const factory _Ended() = _$_Ended;
}

/// @nodoc
mixin _$ItemListState {
  String get aaa => throw _privateConstructorUsedError;
  Stream<QuerySnapshot<Item>>? get stream => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemListStateCopyWith<ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListStateCopyWith<$Res> {
  factory $ItemListStateCopyWith(
          ItemListState value, $Res Function(ItemListState) then) =
      _$ItemListStateCopyWithImpl<$Res>;
  $Res call({String aaa, Stream<QuerySnapshot<Item>>? stream});
}

/// @nodoc
class _$ItemListStateCopyWithImpl<$Res>
    implements $ItemListStateCopyWith<$Res> {
  _$ItemListStateCopyWithImpl(this._value, this._then);

  final ItemListState _value;
  // ignore: unused_field
  final $Res Function(ItemListState) _then;

  @override
  $Res call({
    Object? aaa = freezed,
    Object? stream = freezed,
  }) {
    return _then(_value.copyWith(
      aaa: aaa == freezed
          ? _value.aaa
          : aaa // ignore: cast_nullable_to_non_nullable
              as String,
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Item>>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemListStateCopyWith<$Res>
    implements $ItemListStateCopyWith<$Res> {
  factory _$$_ItemListStateCopyWith(
          _$_ItemListState value, $Res Function(_$_ItemListState) then) =
      __$$_ItemListStateCopyWithImpl<$Res>;
  @override
  $Res call({String aaa, Stream<QuerySnapshot<Item>>? stream});
}

/// @nodoc
class __$$_ItemListStateCopyWithImpl<$Res>
    extends _$ItemListStateCopyWithImpl<$Res>
    implements _$$_ItemListStateCopyWith<$Res> {
  __$$_ItemListStateCopyWithImpl(
      _$_ItemListState _value, $Res Function(_$_ItemListState) _then)
      : super(_value, (v) => _then(v as _$_ItemListState));

  @override
  _$_ItemListState get _value => super._value as _$_ItemListState;

  @override
  $Res call({
    Object? aaa = freezed,
    Object? stream = freezed,
  }) {
    return _then(_$_ItemListState(
      aaa: aaa == freezed
          ? _value.aaa
          : aaa // ignore: cast_nullable_to_non_nullable
              as String,
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Item>>?,
    ));
  }
}

/// @nodoc

class _$_ItemListState implements _ItemListState {
  const _$_ItemListState({this.aaa = "wait god damn it!", this.stream = null});

  @override
  @JsonKey()
  final String aaa;
  @override
  @JsonKey()
  final Stream<QuerySnapshot<Item>>? stream;

  @override
  String toString() {
    return 'ItemListState(aaa: $aaa, stream: $stream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListState &&
            const DeepCollectionEquality().equals(other.aaa, aaa) &&
            const DeepCollectionEquality().equals(other.stream, stream));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(aaa),
      const DeepCollectionEquality().hash(stream));

  @JsonKey(ignore: true)
  @override
  _$$_ItemListStateCopyWith<_$_ItemListState> get copyWith =>
      __$$_ItemListStateCopyWithImpl<_$_ItemListState>(this, _$identity);
}

abstract class _ItemListState implements ItemListState {
  const factory _ItemListState(
      {final String aaa,
      final Stream<QuerySnapshot<Item>>? stream}) = _$_ItemListState;

  @override
  String get aaa => throw _privateConstructorUsedError;
  @override
  Stream<QuerySnapshot<Item>>? get stream => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListStateCopyWith<_$_ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}
