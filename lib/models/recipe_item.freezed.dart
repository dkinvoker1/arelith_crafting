// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeItem {
  ComponentItem? get item => throw _privateConstructorUsedError;
  GlobalKey<State<StatefulWidget>>? get key =>
      throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  double get flex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeItemCopyWith<RecipeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeItemCopyWith<$Res> {
  factory $RecipeItemCopyWith(
          RecipeItem value, $Res Function(RecipeItem) then) =
      _$RecipeItemCopyWithImpl<$Res>;
  $Res call(
      {ComponentItem? item,
      GlobalKey<State<StatefulWidget>>? key,
      int level,
      double flex});

  $ComponentItemCopyWith<$Res>? get item;
}

/// @nodoc
class _$RecipeItemCopyWithImpl<$Res> implements $RecipeItemCopyWith<$Res> {
  _$RecipeItemCopyWithImpl(this._value, this._then);

  final RecipeItem _value;
  // ignore: unused_field
  final $Res Function(RecipeItem) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? key = freezed,
    Object? level = freezed,
    Object? flex = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ComponentItem?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      flex: flex == freezed
          ? _value.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ComponentItemCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ComponentItemCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecipeItemCopyWith<$Res>
    implements $RecipeItemCopyWith<$Res> {
  factory _$$_RecipeItemCopyWith(
          _$_RecipeItem value, $Res Function(_$_RecipeItem) then) =
      __$$_RecipeItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {ComponentItem? item,
      GlobalKey<State<StatefulWidget>>? key,
      int level,
      double flex});

  @override
  $ComponentItemCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_RecipeItemCopyWithImpl<$Res> extends _$RecipeItemCopyWithImpl<$Res>
    implements _$$_RecipeItemCopyWith<$Res> {
  __$$_RecipeItemCopyWithImpl(
      _$_RecipeItem _value, $Res Function(_$_RecipeItem) _then)
      : super(_value, (v) => _then(v as _$_RecipeItem));

  @override
  _$_RecipeItem get _value => super._value as _$_RecipeItem;

  @override
  $Res call({
    Object? item = freezed,
    Object? key = freezed,
    Object? level = freezed,
    Object? flex = freezed,
  }) {
    return _then(_$_RecipeItem(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ComponentItem?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      flex: flex == freezed
          ? _value.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_RecipeItem implements _RecipeItem {
  _$_RecipeItem({this.item, this.key, this.level = 0, this.flex = 0});

  @override
  final ComponentItem? item;
  @override
  final GlobalKey<State<StatefulWidget>>? key;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final double flex;

  @override
  String toString() {
    return 'RecipeItem(item: $item, key: $key, level: $level, flex: $flex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeItem &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.flex, flex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(flex));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeItemCopyWith<_$_RecipeItem> get copyWith =>
      __$$_RecipeItemCopyWithImpl<_$_RecipeItem>(this, _$identity);
}

abstract class _RecipeItem implements RecipeItem {
  factory _RecipeItem(
      {final ComponentItem? item,
      final GlobalKey<State<StatefulWidget>>? key,
      final int level,
      final double flex}) = _$_RecipeItem;

  @override
  ComponentItem? get item => throw _privateConstructorUsedError;
  @override
  GlobalKey<State<StatefulWidget>>? get key =>
      throw _privateConstructorUsedError;
  @override
  int get level => throw _privateConstructorUsedError;
  @override
  double get flex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeItemCopyWith<_$_RecipeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
