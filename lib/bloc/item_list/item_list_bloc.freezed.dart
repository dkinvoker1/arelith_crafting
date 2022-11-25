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
    required TResult Function(String nameFilter) updateNameFilter,
    required TResult Function(ItemCategory itemCategory, bool value)
        updateCategoryFilter,
    required TResult Function(String itemId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
    TResult Function(String itemId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
    TResult Function(String itemId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialse value) initialse,
    required TResult Function(_UpdateNameFilter value) updateNameFilter,
    required TResult Function(_UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
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
    required TResult Function(String nameFilter) updateNameFilter,
    required TResult Function(ItemCategory itemCategory, bool value)
        updateCategoryFilter,
    required TResult Function(String itemId) delete,
  }) {
    return initialse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
    TResult Function(String itemId)? delete,
  }) {
    return initialse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
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
    required TResult Function(_UpdateNameFilter value) updateNameFilter,
    required TResult Function(_UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(_Delete value) delete,
  }) {
    return initialse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(_Delete value)? delete,
  }) {
    return initialse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
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
abstract class _$$_UpdateNameFilterCopyWith<$Res> {
  factory _$$_UpdateNameFilterCopyWith(
          _$_UpdateNameFilter value, $Res Function(_$_UpdateNameFilter) then) =
      __$$_UpdateNameFilterCopyWithImpl<$Res>;
  $Res call({String nameFilter});
}

/// @nodoc
class __$$_UpdateNameFilterCopyWithImpl<$Res>
    extends _$ItemListEventCopyWithImpl<$Res>
    implements _$$_UpdateNameFilterCopyWith<$Res> {
  __$$_UpdateNameFilterCopyWithImpl(
      _$_UpdateNameFilter _value, $Res Function(_$_UpdateNameFilter) _then)
      : super(_value, (v) => _then(v as _$_UpdateNameFilter));

  @override
  _$_UpdateNameFilter get _value => super._value as _$_UpdateNameFilter;

  @override
  $Res call({
    Object? nameFilter = freezed,
  }) {
    return _then(_$_UpdateNameFilter(
      nameFilter == freezed
          ? _value.nameFilter
          : nameFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateNameFilter implements _UpdateNameFilter {
  const _$_UpdateNameFilter(this.nameFilter);

  @override
  final String nameFilter;

  @override
  String toString() {
    return 'ItemListEvent.updateNameFilter(nameFilter: $nameFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNameFilter &&
            const DeepCollectionEquality()
                .equals(other.nameFilter, nameFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameFilter));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateNameFilterCopyWith<_$_UpdateNameFilter> get copyWith =>
      __$$_UpdateNameFilterCopyWithImpl<_$_UpdateNameFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialse,
    required TResult Function(String nameFilter) updateNameFilter,
    required TResult Function(ItemCategory itemCategory, bool value)
        updateCategoryFilter,
    required TResult Function(String itemId) delete,
  }) {
    return updateNameFilter(nameFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
    TResult Function(String itemId)? delete,
  }) {
    return updateNameFilter?.call(nameFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
    TResult Function(String itemId)? delete,
    required TResult orElse(),
  }) {
    if (updateNameFilter != null) {
      return updateNameFilter(nameFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialse value) initialse,
    required TResult Function(_UpdateNameFilter value) updateNameFilter,
    required TResult Function(_UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(_Delete value) delete,
  }) {
    return updateNameFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(_Delete value)? delete,
  }) {
    return updateNameFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (updateNameFilter != null) {
      return updateNameFilter(this);
    }
    return orElse();
  }
}

abstract class _UpdateNameFilter implements ItemListEvent {
  const factory _UpdateNameFilter(final String nameFilter) =
      _$_UpdateNameFilter;

  String get nameFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateNameFilterCopyWith<_$_UpdateNameFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCategoryFilterCopyWith<$Res> {
  factory _$$_UpdateCategoryFilterCopyWith(_$_UpdateCategoryFilter value,
          $Res Function(_$_UpdateCategoryFilter) then) =
      __$$_UpdateCategoryFilterCopyWithImpl<$Res>;
  $Res call({ItemCategory itemCategory, bool value});
}

/// @nodoc
class __$$_UpdateCategoryFilterCopyWithImpl<$Res>
    extends _$ItemListEventCopyWithImpl<$Res>
    implements _$$_UpdateCategoryFilterCopyWith<$Res> {
  __$$_UpdateCategoryFilterCopyWithImpl(_$_UpdateCategoryFilter _value,
      $Res Function(_$_UpdateCategoryFilter) _then)
      : super(_value, (v) => _then(v as _$_UpdateCategoryFilter));

  @override
  _$_UpdateCategoryFilter get _value => super._value as _$_UpdateCategoryFilter;

  @override
  $Res call({
    Object? itemCategory = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_UpdateCategoryFilter(
      itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as ItemCategory,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateCategoryFilter implements _UpdateCategoryFilter {
  const _$_UpdateCategoryFilter(this.itemCategory, this.value);

  @override
  final ItemCategory itemCategory;
  @override
  final bool value;

  @override
  String toString() {
    return 'ItemListEvent.updateCategoryFilter(itemCategory: $itemCategory, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCategoryFilter &&
            const DeepCollectionEquality()
                .equals(other.itemCategory, itemCategory) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemCategory),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCategoryFilterCopyWith<_$_UpdateCategoryFilter> get copyWith =>
      __$$_UpdateCategoryFilterCopyWithImpl<_$_UpdateCategoryFilter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialse,
    required TResult Function(String nameFilter) updateNameFilter,
    required TResult Function(ItemCategory itemCategory, bool value)
        updateCategoryFilter,
    required TResult Function(String itemId) delete,
  }) {
    return updateCategoryFilter(itemCategory, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
    TResult Function(String itemId)? delete,
  }) {
    return updateCategoryFilter?.call(itemCategory, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
    TResult Function(String itemId)? delete,
    required TResult orElse(),
  }) {
    if (updateCategoryFilter != null) {
      return updateCategoryFilter(itemCategory, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialse value) initialse,
    required TResult Function(_UpdateNameFilter value) updateNameFilter,
    required TResult Function(_UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(_Delete value) delete,
  }) {
    return updateCategoryFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(_Delete value)? delete,
  }) {
    return updateCategoryFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (updateCategoryFilter != null) {
      return updateCategoryFilter(this);
    }
    return orElse();
  }
}

abstract class _UpdateCategoryFilter implements ItemListEvent {
  const factory _UpdateCategoryFilter(
          final ItemCategory itemCategory, final bool value) =
      _$_UpdateCategoryFilter;

  ItemCategory get itemCategory => throw _privateConstructorUsedError;
  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateCategoryFilterCopyWith<_$_UpdateCategoryFilter> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String nameFilter) updateNameFilter,
    required TResult Function(ItemCategory itemCategory, bool value)
        updateCategoryFilter,
    required TResult Function(String itemId) delete,
  }) {
    return delete(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
    TResult Function(String itemId)? delete,
  }) {
    return delete?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialse,
    TResult Function(String nameFilter)? updateNameFilter,
    TResult Function(ItemCategory itemCategory, bool value)?
        updateCategoryFilter,
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
    required TResult Function(_UpdateNameFilter value) updateNameFilter,
    required TResult Function(_UpdateCategoryFilter value) updateCategoryFilter,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
    TResult Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialse value)? initialse,
    TResult Function(_UpdateNameFilter value)? updateNameFilter,
    TResult Function(_UpdateCategoryFilter value)? updateCategoryFilter,
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
  String get nameFilter => throw _privateConstructorUsedError;
  Map<ItemCategory, bool> get categoryFilter =>
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
  $Res call(
      {Stream<QuerySnapshot<Item>>? itemsStream,
      String nameFilter,
      Map<ItemCategory, bool> categoryFilter});
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
    Object? nameFilter = freezed,
    Object? categoryFilter = freezed,
  }) {
    return _then(_value.copyWith(
      itemsStream: itemsStream == freezed
          ? _value.itemsStream
          : itemsStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Item>>?,
      nameFilter: nameFilter == freezed
          ? _value.nameFilter
          : nameFilter // ignore: cast_nullable_to_non_nullable
              as String,
      categoryFilter: categoryFilter == freezed
          ? _value.categoryFilter
          : categoryFilter // ignore: cast_nullable_to_non_nullable
              as Map<ItemCategory, bool>,
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
  $Res call(
      {Stream<QuerySnapshot<Item>>? itemsStream,
      String nameFilter,
      Map<ItemCategory, bool> categoryFilter});
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
    Object? nameFilter = freezed,
    Object? categoryFilter = freezed,
  }) {
    return _then(_$_ItemListState(
      itemsStream: itemsStream == freezed
          ? _value.itemsStream
          : itemsStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Item>>?,
      nameFilter: nameFilter == freezed
          ? _value.nameFilter
          : nameFilter // ignore: cast_nullable_to_non_nullable
              as String,
      categoryFilter: categoryFilter == freezed
          ? _value.categoryFilter
          : categoryFilter // ignore: cast_nullable_to_non_nullable
              as Map<ItemCategory, bool>,
    ));
  }
}

/// @nodoc

class _$_ItemListState extends _ItemListState {
  const _$_ItemListState(
      {this.itemsStream = null,
      this.nameFilter = '',
      this.categoryFilter = const {}})
      : super._();

  @override
  @JsonKey()
  final Stream<QuerySnapshot<Item>>? itemsStream;
  @override
  @JsonKey()
  final String nameFilter;
  @override
  @JsonKey()
  final Map<ItemCategory, bool> categoryFilter;

  @override
  String toString() {
    return 'ItemListState(itemsStream: $itemsStream, nameFilter: $nameFilter, categoryFilter: $categoryFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListState &&
            const DeepCollectionEquality()
                .equals(other.itemsStream, itemsStream) &&
            const DeepCollectionEquality()
                .equals(other.nameFilter, nameFilter) &&
            const DeepCollectionEquality()
                .equals(other.categoryFilter, categoryFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemsStream),
      const DeepCollectionEquality().hash(nameFilter),
      const DeepCollectionEquality().hash(categoryFilter));

  @JsonKey(ignore: true)
  @override
  _$$_ItemListStateCopyWith<_$_ItemListState> get copyWith =>
      __$$_ItemListStateCopyWithImpl<_$_ItemListState>(this, _$identity);
}

abstract class _ItemListState extends ItemListState {
  const factory _ItemListState(
      {final Stream<QuerySnapshot<Item>>? itemsStream,
      final String nameFilter,
      final Map<ItemCategory, bool> categoryFilter}) = _$_ItemListState;
  const _ItemListState._() : super._();

  @override
  Stream<QuerySnapshot<Item>>? get itemsStream =>
      throw _privateConstructorUsedError;
  @override
  String get nameFilter => throw _privateConstructorUsedError;
  @override
  Map<ItemCategory, bool> get categoryFilter =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListStateCopyWith<_$_ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}
