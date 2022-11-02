// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_list_helper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemListHelper {
  List<Item> get items => throw _privateConstructorUsedError;
  String get nameFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemListHelperCopyWith<ItemListHelper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListHelperCopyWith<$Res> {
  factory $ItemListHelperCopyWith(
          ItemListHelper value, $Res Function(ItemListHelper) then) =
      _$ItemListHelperCopyWithImpl<$Res>;
  $Res call({List<Item> items, String nameFilter});
}

/// @nodoc
class _$ItemListHelperCopyWithImpl<$Res>
    implements $ItemListHelperCopyWith<$Res> {
  _$ItemListHelperCopyWithImpl(this._value, this._then);

  final ItemListHelper _value;
  // ignore: unused_field
  final $Res Function(ItemListHelper) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? nameFilter = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      nameFilter: nameFilter == freezed
          ? _value.nameFilter
          : nameFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemListHelperCopyWith<$Res>
    implements $ItemListHelperCopyWith<$Res> {
  factory _$$_ItemListHelperCopyWith(
          _$_ItemListHelper value, $Res Function(_$_ItemListHelper) then) =
      __$$_ItemListHelperCopyWithImpl<$Res>;
  @override
  $Res call({List<Item> items, String nameFilter});
}

/// @nodoc
class __$$_ItemListHelperCopyWithImpl<$Res>
    extends _$ItemListHelperCopyWithImpl<$Res>
    implements _$$_ItemListHelperCopyWith<$Res> {
  __$$_ItemListHelperCopyWithImpl(
      _$_ItemListHelper _value, $Res Function(_$_ItemListHelper) _then)
      : super(_value, (v) => _then(v as _$_ItemListHelper));

  @override
  _$_ItemListHelper get _value => super._value as _$_ItemListHelper;

  @override
  $Res call({
    Object? items = freezed,
    Object? nameFilter = freezed,
  }) {
    return _then(_$_ItemListHelper(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      nameFilter: nameFilter == freezed
          ? _value.nameFilter
          : nameFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ItemListHelper extends _ItemListHelper {
  _$_ItemListHelper({required this.items, required this.nameFilter})
      : super._();

  @override
  final List<Item> items;
  @override
  final String nameFilter;

  @override
  String toString() {
    return 'ItemListHelper(items: $items, nameFilter: $nameFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListHelper &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.nameFilter, nameFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(nameFilter));

  @JsonKey(ignore: true)
  @override
  _$$_ItemListHelperCopyWith<_$_ItemListHelper> get copyWith =>
      __$$_ItemListHelperCopyWithImpl<_$_ItemListHelper>(this, _$identity);
}

abstract class _ItemListHelper extends ItemListHelper {
  factory _ItemListHelper(
      {required final List<Item> items,
      required final String nameFilter}) = _$_ItemListHelper;
  _ItemListHelper._() : super._();

  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  String get nameFilter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListHelperCopyWith<_$_ItemListHelper> get copyWith =>
      throw _privateConstructorUsedError;
}
