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
  Future<void> Function(Offset, Item) get onItemPressed =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemListHelperCopyWith<ItemListHelper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListHelperCopyWith<$Res> {
  factory $ItemListHelperCopyWith(
          ItemListHelper value, $Res Function(ItemListHelper) then) =
      _$ItemListHelperCopyWithImpl<$Res>;
  $Res call({Future<void> Function(Offset, Item) onItemPressed});
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
    Object? onItemPressed = freezed,
  }) {
    return _then(_value.copyWith(
      onItemPressed: onItemPressed == freezed
          ? _value.onItemPressed
          : onItemPressed // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(Offset, Item),
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
  $Res call({Future<void> Function(Offset, Item) onItemPressed});
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
    Object? onItemPressed = freezed,
  }) {
    return _then(_$_ItemListHelper(
      onItemPressed: onItemPressed == freezed
          ? _value.onItemPressed
          : onItemPressed // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(Offset, Item),
    ));
  }
}

/// @nodoc

class _$_ItemListHelper extends _ItemListHelper {
  _$_ItemListHelper({required this.onItemPressed}) : super._();

  @override
  final Future<void> Function(Offset, Item) onItemPressed;

  @override
  String toString() {
    return 'ItemListHelper(onItemPressed: $onItemPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemListHelper &&
            (identical(other.onItemPressed, onItemPressed) ||
                other.onItemPressed == onItemPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onItemPressed);

  @JsonKey(ignore: true)
  @override
  _$$_ItemListHelperCopyWith<_$_ItemListHelper> get copyWith =>
      __$$_ItemListHelperCopyWithImpl<_$_ItemListHelper>(this, _$identity);
}

abstract class _ItemListHelper extends ItemListHelper {
  factory _ItemListHelper(
          {required final Future<void> Function(Offset, Item) onItemPressed}) =
      _$_ItemListHelper;
  _ItemListHelper._() : super._();

  @override
  Future<void> Function(Offset, Item) get onItemPressed =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemListHelperCopyWith<_$_ItemListHelper> get copyWith =>
      throw _privateConstructorUsedError;
}
