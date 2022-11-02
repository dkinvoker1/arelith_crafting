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
    required TResult Function() initialse,
    required TResult Function(String itemId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String itemId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String itemId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialse value) initialse,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Delete value)? delete,
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
abstract class _$$_InitialseCopyWith<$Res> {
  factory _$$_InitialseCopyWith(
          _$_Initialse value, $Res Function(_$_Initialse) then) =
      __$$_InitialseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialseCopyWithImpl<$Res> extends _$ItemListEventCopyWithImpl<$Res>
    implements _$$_InitialseCopyWith<$Res> {
  __$$_InitialseCopyWithImpl(
      _$_Initialse _value, $Res Function(_$_Initialse) _then)
      : super(_value, (v) => _then(v as _$_Initialse));

  @override
  _$_Initialse get _value => super._value as _$_Initialse;
}

/// @nodoc

class _$_Initialse implements _Initialse {
  const _$_Initialse();

  @override
  String toString() {
    return 'ItemListEvent.initialse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialse,
    required TResult Function(String itemId) delete,
  }) {
    return initialse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String itemId)? delete,
  }) {
    return initialse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String itemId)? delete,
    required TResult orElse(),
  }) {
    if (initialse != null) {
      return initialse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialse value) initialse,
    required TResult Function(_Delete value) delete,
  }) {
    return initialse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Delete value)? delete,
  }) {
    return initialse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (initialse != null) {
      return initialse(this);
    }
    return orElse();
  }
}

abstract class _Initialse implements ItemListEvent {
  const factory _Initialse() = _$_Initialse;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  $Res call({String itemId});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res> extends _$ItemListEventCopyWithImpl<$Res>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, (v) => _then(v as _$_Delete));

  @override
  _$_Delete get _value => super._value as _$_Delete;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_$_Delete(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.itemId);

  @override
  final String itemId;

  @override
  String toString() {
    return 'ItemListEvent.delete(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialse,
    required TResult Function(String itemId) delete,
  }) {
    return delete(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String itemId)? delete,
  }) {
    return delete?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String itemId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialse value) initialse,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ItemListEvent {
  const factory _Delete(final String itemId) = _$_Delete;

  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemListState {
  Stream<QuerySnapshot<Item>>? get itemsStream =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemListStateCopyWith<ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListStateCopyWith<$Res> {
  factory $ItemListStateCopyWith(
          ItemListState value, $Res Function(ItemListState) then) =
      _$ItemListStateCopyWithImpl<$Res>;
  $Res call({Stream<QuerySnapshot<Item>>? itemsStream});
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
    Object? itemsStream = freezed,
  }) {
    return _then(_value.copyWith(
      itemsStream: itemsStream == freezed
          ? _value.itemsStream
          : itemsStream // ignore: cast_nullable_to_non_nullable
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
  $Res call({Stream<QuerySnapshot<Item>>? itemsStream});
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
    Object? itemsStream = freezed,
  }) {
    return _then(_$_ItemListState(
      itemsStream: itemsStream == freezed
          ? _value.itemsStream
          : itemsStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Item>>?,
    ));
  }
}

/// @nodoc

class _$_ItemListState extends _ItemListState {
  const _$_ItemListState({this.itemsStream = null}) : super._();

  @override
  @JsonKey()
  final Stream<QuerySnapshot<Item>>? itemsStream;

  @override
  String toString() {
    return 'ItemListState(itemsStream: $itemsStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListState &&
            const DeepCollectionEquality()
                .equals(other.itemsStream, itemsStream));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(itemsStream));

  @JsonKey(ignore: true)
  @override
  _$$_ItemListStateCopyWith<_$_ItemListState> get copyWith =>
      __$$_ItemListStateCopyWithImpl<_$_ItemListState>(this, _$identity);
}

abstract class _ItemListState extends ItemListState {
  const factory _ItemListState(
      {final Stream<QuerySnapshot<Item>>? itemsStream}) = _$_ItemListState;
  const _ItemListState._() : super._();

  @override
  Stream<QuerySnapshot<Item>>? get itemsStream =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListStateCopyWith<_$_ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}
