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
    required TResult Function(String searhPhrase) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String searhPhrase)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String searhPhrase)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialse value) initialse,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Search value)? search,
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
    required TResult Function(String searhPhrase) search,
  }) {
    return initialse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String searhPhrase)? search,
  }) {
    return initialse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String searhPhrase)? search,
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
    required TResult Function(_Search value) search,
  }) {
    return initialse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Search value)? search,
  }) {
    return initialse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Search value)? search,
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
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  $Res call({String searhPhrase});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res> extends _$ItemListEventCopyWithImpl<$Res>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, (v) => _then(v as _$_Search));

  @override
  _$_Search get _value => super._value as _$_Search;

  @override
  $Res call({
    Object? searhPhrase = freezed,
  }) {
    return _then(_$_Search(
      searhPhrase == freezed
          ? _value.searhPhrase
          : searhPhrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.searhPhrase);

  @override
  final String searhPhrase;

  @override
  String toString() {
    return 'ItemListEvent.search(searhPhrase: $searhPhrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            const DeepCollectionEquality()
                .equals(other.searhPhrase, searhPhrase));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searhPhrase));

  @JsonKey(ignore: true)
  @override
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialse,
    required TResult Function(String searhPhrase) search,
  }) {
    return search(searhPhrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String searhPhrase)? search,
  }) {
    return search?.call(searhPhrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String searhPhrase)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searhPhrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialse value) initialse,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements ItemListEvent {
  const factory _Search(final String searhPhrase) = _$_Search;

  String get searhPhrase => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemListState {
  Query<Item>? get itemsQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemListStateCopyWith<ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListStateCopyWith<$Res> {
  factory $ItemListStateCopyWith(
          ItemListState value, $Res Function(ItemListState) then) =
      _$ItemListStateCopyWithImpl<$Res>;
  $Res call({Query<Item>? itemsQuery});
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
    Object? itemsQuery = freezed,
  }) {
    return _then(_value.copyWith(
      itemsQuery: itemsQuery == freezed
          ? _value.itemsQuery
          : itemsQuery // ignore: cast_nullable_to_non_nullable
              as Query<Item>?,
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
  $Res call({Query<Item>? itemsQuery});
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
    Object? itemsQuery = freezed,
  }) {
    return _then(_$_ItemListState(
      itemsQuery: itemsQuery == freezed
          ? _value.itemsQuery
          : itemsQuery // ignore: cast_nullable_to_non_nullable
              as Query<Item>?,
    ));
  }
}

/// @nodoc

class _$_ItemListState extends _ItemListState {
  const _$_ItemListState({this.itemsQuery = null}) : super._();

  @override
  @JsonKey()
  final Query<Item>? itemsQuery;

  @override
  String toString() {
    return 'ItemListState(itemsQuery: $itemsQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListState &&
            const DeepCollectionEquality()
                .equals(other.itemsQuery, itemsQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemsQuery));

  @JsonKey(ignore: true)
  @override
  _$$_ItemListStateCopyWith<_$_ItemListState> get copyWith =>
      __$$_ItemListStateCopyWithImpl<_$_ItemListState>(this, _$identity);
}

abstract class _ItemListState extends ItemListState {
  const factory _ItemListState({final Query<Item>? itemsQuery}) =
      _$_ItemListState;
  const _ItemListState._() : super._();

  @override
  Query<Item>? get itemsQuery => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListStateCopyWith<_$_ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}
