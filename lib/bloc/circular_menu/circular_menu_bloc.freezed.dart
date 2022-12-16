// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'circular_menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CircularMenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset offset, Item? newItem) setItem,
    required TResult Function() clearItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Offset offset, Item? newItem)? setItem,
    TResult Function()? clearItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset offset, Item? newItem)? setItem,
    TResult Function()? clearItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItem value) setItem,
    required TResult Function(_ClearItem value) clearItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetItem value)? setItem,
    TResult Function(_ClearItem value)? clearItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItem value)? setItem,
    TResult Function(_ClearItem value)? clearItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircularMenuEventCopyWith<$Res> {
  factory $CircularMenuEventCopyWith(
          CircularMenuEvent value, $Res Function(CircularMenuEvent) then) =
      _$CircularMenuEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CircularMenuEventCopyWithImpl<$Res>
    implements $CircularMenuEventCopyWith<$Res> {
  _$CircularMenuEventCopyWithImpl(this._value, this._then);

  final CircularMenuEvent _value;
  // ignore: unused_field
  final $Res Function(CircularMenuEvent) _then;
}

/// @nodoc
abstract class _$$_SetItemCopyWith<$Res> {
  factory _$$_SetItemCopyWith(
          _$_SetItem value, $Res Function(_$_SetItem) then) =
      __$$_SetItemCopyWithImpl<$Res>;
  $Res call({Offset offset, Item? newItem});

  $ItemCopyWith<$Res>? get newItem;
}

/// @nodoc
class __$$_SetItemCopyWithImpl<$Res>
    extends _$CircularMenuEventCopyWithImpl<$Res>
    implements _$$_SetItemCopyWith<$Res> {
  __$$_SetItemCopyWithImpl(_$_SetItem _value, $Res Function(_$_SetItem) _then)
      : super(_value, (v) => _then(v as _$_SetItem));

  @override
  _$_SetItem get _value => super._value as _$_SetItem;

  @override
  $Res call({
    Object? offset = freezed,
    Object? newItem = freezed,
  }) {
    return _then(_$_SetItem(
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      newItem == freezed
          ? _value.newItem
          : newItem // ignore: cast_nullable_to_non_nullable
              as Item?,
    ));
  }

  @override
  $ItemCopyWith<$Res>? get newItem {
    if (_value.newItem == null) {
      return null;
    }

    return $ItemCopyWith<$Res>(_value.newItem!, (value) {
      return _then(_value.copyWith(newItem: value));
    });
  }
}

/// @nodoc

class _$_SetItem implements _SetItem {
  const _$_SetItem(this.offset, this.newItem);

  @override
  final Offset offset;
  @override
  final Item? newItem;

  @override
  String toString() {
    return 'CircularMenuEvent.setItem(offset: $offset, newItem: $newItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetItem &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.newItem, newItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(newItem));

  @JsonKey(ignore: true)
  @override
  _$$_SetItemCopyWith<_$_SetItem> get copyWith =>
      __$$_SetItemCopyWithImpl<_$_SetItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset offset, Item? newItem) setItem,
    required TResult Function() clearItem,
  }) {
    return setItem(offset, newItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Offset offset, Item? newItem)? setItem,
    TResult Function()? clearItem,
  }) {
    return setItem?.call(offset, newItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset offset, Item? newItem)? setItem,
    TResult Function()? clearItem,
    required TResult orElse(),
  }) {
    if (setItem != null) {
      return setItem(offset, newItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItem value) setItem,
    required TResult Function(_ClearItem value) clearItem,
  }) {
    return setItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetItem value)? setItem,
    TResult Function(_ClearItem value)? clearItem,
  }) {
    return setItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItem value)? setItem,
    TResult Function(_ClearItem value)? clearItem,
    required TResult orElse(),
  }) {
    if (setItem != null) {
      return setItem(this);
    }
    return orElse();
  }
}

abstract class _SetItem implements CircularMenuEvent {
  const factory _SetItem(final Offset offset, final Item? newItem) = _$_SetItem;

  Offset get offset => throw _privateConstructorUsedError;
  Item? get newItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetItemCopyWith<_$_SetItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearItemCopyWith<$Res> {
  factory _$$_ClearItemCopyWith(
          _$_ClearItem value, $Res Function(_$_ClearItem) then) =
      __$$_ClearItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearItemCopyWithImpl<$Res>
    extends _$CircularMenuEventCopyWithImpl<$Res>
    implements _$$_ClearItemCopyWith<$Res> {
  __$$_ClearItemCopyWithImpl(
      _$_ClearItem _value, $Res Function(_$_ClearItem) _then)
      : super(_value, (v) => _then(v as _$_ClearItem));

  @override
  _$_ClearItem get _value => super._value as _$_ClearItem;
}

/// @nodoc

class _$_ClearItem implements _ClearItem {
  const _$_ClearItem();

  @override
  String toString() {
    return 'CircularMenuEvent.clearItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset offset, Item? newItem) setItem,
    required TResult Function() clearItem,
  }) {
    return clearItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Offset offset, Item? newItem)? setItem,
    TResult Function()? clearItem,
  }) {
    return clearItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset offset, Item? newItem)? setItem,
    TResult Function()? clearItem,
    required TResult orElse(),
  }) {
    if (clearItem != null) {
      return clearItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItem value) setItem,
    required TResult Function(_ClearItem value) clearItem,
  }) {
    return clearItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetItem value)? setItem,
    TResult Function(_ClearItem value)? clearItem,
  }) {
    return clearItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItem value)? setItem,
    TResult Function(_ClearItem value)? clearItem,
    required TResult orElse(),
  }) {
    if (clearItem != null) {
      return clearItem(this);
    }
    return orElse();
  }
}

abstract class _ClearItem implements CircularMenuEvent {
  const factory _ClearItem() = _$_ClearItem;
}

/// @nodoc
mixin _$CircularMenuState {
  Item? get clickedItem => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CircularMenuStateCopyWith<CircularMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircularMenuStateCopyWith<$Res> {
  factory $CircularMenuStateCopyWith(
          CircularMenuState value, $Res Function(CircularMenuState) then) =
      _$CircularMenuStateCopyWithImpl<$Res>;
  $Res call({Item? clickedItem, Offset offset});

  $ItemCopyWith<$Res>? get clickedItem;
}

/// @nodoc
class _$CircularMenuStateCopyWithImpl<$Res>
    implements $CircularMenuStateCopyWith<$Res> {
  _$CircularMenuStateCopyWithImpl(this._value, this._then);

  final CircularMenuState _value;
  // ignore: unused_field
  final $Res Function(CircularMenuState) _then;

  @override
  $Res call({
    Object? clickedItem = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      clickedItem: clickedItem == freezed
          ? _value.clickedItem
          : clickedItem // ignore: cast_nullable_to_non_nullable
              as Item?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }

  @override
  $ItemCopyWith<$Res>? get clickedItem {
    if (_value.clickedItem == null) {
      return null;
    }

    return $ItemCopyWith<$Res>(_value.clickedItem!, (value) {
      return _then(_value.copyWith(clickedItem: value));
    });
  }
}

/// @nodoc
abstract class _$$_CircularMenuStateCopyWith<$Res>
    implements $CircularMenuStateCopyWith<$Res> {
  factory _$$_CircularMenuStateCopyWith(_$_CircularMenuState value,
          $Res Function(_$_CircularMenuState) then) =
      __$$_CircularMenuStateCopyWithImpl<$Res>;
  @override
  $Res call({Item? clickedItem, Offset offset});

  @override
  $ItemCopyWith<$Res>? get clickedItem;
}

/// @nodoc
class __$$_CircularMenuStateCopyWithImpl<$Res>
    extends _$CircularMenuStateCopyWithImpl<$Res>
    implements _$$_CircularMenuStateCopyWith<$Res> {
  __$$_CircularMenuStateCopyWithImpl(
      _$_CircularMenuState _value, $Res Function(_$_CircularMenuState) _then)
      : super(_value, (v) => _then(v as _$_CircularMenuState));

  @override
  _$_CircularMenuState get _value => super._value as _$_CircularMenuState;

  @override
  $Res call({
    Object? clickedItem = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_CircularMenuState(
      clickedItem: clickedItem == freezed
          ? _value.clickedItem
          : clickedItem // ignore: cast_nullable_to_non_nullable
              as Item?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_CircularMenuState implements _CircularMenuState {
  const _$_CircularMenuState(
      {this.clickedItem = null, this.offset = const Offset(100, 100)});

  @override
  @JsonKey()
  final Item? clickedItem;
  @override
  @JsonKey()
  final Offset offset;

  @override
  String toString() {
    return 'CircularMenuState(clickedItem: $clickedItem, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CircularMenuState &&
            const DeepCollectionEquality()
                .equals(other.clickedItem, clickedItem) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clickedItem),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$$_CircularMenuStateCopyWith<_$_CircularMenuState> get copyWith =>
      __$$_CircularMenuStateCopyWithImpl<_$_CircularMenuState>(
          this, _$identity);
}

abstract class _CircularMenuState implements CircularMenuState {
  const factory _CircularMenuState(
      {final Item? clickedItem, final Offset offset}) = _$_CircularMenuState;

  @override
  Item? get clickedItem => throw _privateConstructorUsedError;
  @override
  Offset get offset => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CircularMenuStateCopyWith<_$_CircularMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
