// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    TResult? Function(Offset offset, Item? newItem)? setItem,
    TResult? Function()? clearItem,
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
    TResult? Function(_SetItem value)? setItem,
    TResult? Function(_ClearItem value)? clearItem,
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
      _$CircularMenuEventCopyWithImpl<$Res, CircularMenuEvent>;
}

/// @nodoc
class _$CircularMenuEventCopyWithImpl<$Res, $Val extends CircularMenuEvent>
    implements $CircularMenuEventCopyWith<$Res> {
  _$CircularMenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetItemCopyWith<$Res> {
  factory _$$_SetItemCopyWith(
          _$_SetItem value, $Res Function(_$_SetItem) then) =
      __$$_SetItemCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset offset, Item? newItem});

  $ItemCopyWith<$Res>? get newItem;
}

/// @nodoc
class __$$_SetItemCopyWithImpl<$Res>
    extends _$CircularMenuEventCopyWithImpl<$Res, _$_SetItem>
    implements _$$_SetItemCopyWith<$Res> {
  __$$_SetItemCopyWithImpl(_$_SetItem _value, $Res Function(_$_SetItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? newItem = freezed,
  }) {
    return _then(_$_SetItem(
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      freezed == newItem
          ? _value.newItem
          : newItem // ignore: cast_nullable_to_non_nullable
              as Item?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.newItem, newItem) || other.newItem == newItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, newItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function(Offset offset, Item? newItem)? setItem,
    TResult? Function()? clearItem,
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
    TResult? Function(_SetItem value)? setItem,
    TResult? Function(_ClearItem value)? clearItem,
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

  Offset get offset;
  Item? get newItem;
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
    extends _$CircularMenuEventCopyWithImpl<$Res, _$_ClearItem>
    implements _$$_ClearItemCopyWith<$Res> {
  __$$_ClearItemCopyWithImpl(
      _$_ClearItem _value, $Res Function(_$_ClearItem) _then)
      : super(_value, _then);
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
    TResult? Function(Offset offset, Item? newItem)? setItem,
    TResult? Function()? clearItem,
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
    TResult? Function(_SetItem value)? setItem,
    TResult? Function(_ClearItem value)? clearItem,
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
      _$CircularMenuStateCopyWithImpl<$Res, CircularMenuState>;
  @useResult
  $Res call({Item? clickedItem, Offset offset});

  $ItemCopyWith<$Res>? get clickedItem;
}

/// @nodoc
class _$CircularMenuStateCopyWithImpl<$Res, $Val extends CircularMenuState>
    implements $CircularMenuStateCopyWith<$Res> {
  _$CircularMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clickedItem = freezed,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      clickedItem: freezed == clickedItem
          ? _value.clickedItem
          : clickedItem // ignore: cast_nullable_to_non_nullable
              as Item?,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res>? get clickedItem {
    if (_value.clickedItem == null) {
      return null;
    }

    return $ItemCopyWith<$Res>(_value.clickedItem!, (value) {
      return _then(_value.copyWith(clickedItem: value) as $Val);
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
  @useResult
  $Res call({Item? clickedItem, Offset offset});

  @override
  $ItemCopyWith<$Res>? get clickedItem;
}

/// @nodoc
class __$$_CircularMenuStateCopyWithImpl<$Res>
    extends _$CircularMenuStateCopyWithImpl<$Res, _$_CircularMenuState>
    implements _$$_CircularMenuStateCopyWith<$Res> {
  __$$_CircularMenuStateCopyWithImpl(
      _$_CircularMenuState _value, $Res Function(_$_CircularMenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clickedItem = freezed,
    Object? offset = null,
  }) {
    return _then(_$_CircularMenuState(
      clickedItem: freezed == clickedItem
          ? _value.clickedItem
          : clickedItem // ignore: cast_nullable_to_non_nullable
              as Item?,
      offset: null == offset
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
            (identical(other.clickedItem, clickedItem) ||
                other.clickedItem == clickedItem) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clickedItem, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CircularMenuStateCopyWith<_$_CircularMenuState> get copyWith =>
      __$$_CircularMenuStateCopyWithImpl<_$_CircularMenuState>(
          this, _$identity);
}

abstract class _CircularMenuState implements CircularMenuState {
  const factory _CircularMenuState(
      {final Item? clickedItem, final Offset offset}) = _$_CircularMenuState;

  @override
  Item? get clickedItem;
  @override
  Offset get offset;
  @override
  @JsonKey(ignore: true)
  _$$_CircularMenuStateCopyWith<_$_CircularMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
