// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'component_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComponentItem _$ComponentItemFromJson(Map<String, dynamic> json) {
  return _ComponentItem.fromJson(json);
}

/// @nodoc
mixin _$ComponentItem {
  Item get item => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComponentItemCopyWith<ComponentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentItemCopyWith<$Res> {
  factory $ComponentItemCopyWith(
          ComponentItem value, $Res Function(ComponentItem) then) =
      _$ComponentItemCopyWithImpl<$Res>;
  $Res call({Item item, int quantity});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$ComponentItemCopyWithImpl<$Res>
    implements $ComponentItemCopyWith<$Res> {
  _$ComponentItemCopyWithImpl(this._value, this._then);

  final ComponentItem _value;
  // ignore: unused_field
  final $Res Function(ComponentItem) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_ComponentItemCopyWith<$Res>
    implements $ComponentItemCopyWith<$Res> {
  factory _$$_ComponentItemCopyWith(
          _$_ComponentItem value, $Res Function(_$_ComponentItem) then) =
      __$$_ComponentItemCopyWithImpl<$Res>;
  @override
  $Res call({Item item, int quantity});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ComponentItemCopyWithImpl<$Res>
    extends _$ComponentItemCopyWithImpl<$Res>
    implements _$$_ComponentItemCopyWith<$Res> {
  __$$_ComponentItemCopyWithImpl(
      _$_ComponentItem _value, $Res Function(_$_ComponentItem) _then)
      : super(_value, (v) => _then(v as _$_ComponentItem));

  @override
  _$_ComponentItem get _value => super._value as _$_ComponentItem;

  @override
  $Res call({
    Object? item = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_ComponentItem(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComponentItem implements _ComponentItem {
  _$_ComponentItem({required this.item, this.quantity = 1});

  factory _$_ComponentItem.fromJson(Map<String, dynamic> json) =>
      _$$_ComponentItemFromJson(json);

  @override
  final Item item;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'ComponentItem(item: $item, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComponentItem &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_ComponentItemCopyWith<_$_ComponentItem> get copyWith =>
      __$$_ComponentItemCopyWithImpl<_$_ComponentItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComponentItemToJson(this);
  }
}

abstract class _ComponentItem implements ComponentItem {
  factory _ComponentItem({required final Item item, final int quantity}) =
      _$_ComponentItem;

  factory _ComponentItem.fromJson(Map<String, dynamic> json) =
      _$_ComponentItem.fromJson;

  @override
  Item get item => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ComponentItemCopyWith<_$_ComponentItem> get copyWith =>
      throw _privateConstructorUsedError;
}
