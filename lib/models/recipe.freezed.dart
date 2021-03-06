// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Recipe {
  Item get item => throw _privateConstructorUsedError;
  List<Recipe> get components => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call({Item item, List<Recipe> components});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
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
abstract class _$$_RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$_RecipeCopyWith(_$_Recipe value, $Res Function(_$_Recipe) then) =
      __$$_RecipeCopyWithImpl<$Res>;
  @override
  $Res call({Item item, List<Recipe> components});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_RecipeCopyWithImpl<$Res> extends _$RecipeCopyWithImpl<$Res>
    implements _$$_RecipeCopyWith<$Res> {
  __$$_RecipeCopyWithImpl(_$_Recipe _value, $Res Function(_$_Recipe) _then)
      : super(_value, (v) => _then(v as _$_Recipe));

  @override
  _$_Recipe get _value => super._value as _$_Recipe;

  @override
  $Res call({
    Object? item = freezed,
    Object? components = freezed,
  }) {
    return _then(_$_Recipe(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      components: components == freezed
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_Recipe implements _Recipe {
  _$_Recipe({required this.item, final List<Recipe> components = const []})
      : _components = components;

  @override
  final Item item;
  final List<Recipe> _components;
  @override
  @JsonKey()
  List<Recipe> get components {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @override
  String toString() {
    return 'Recipe(item: $item, components: $components)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipe &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(_components));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      __$$_RecipeCopyWithImpl<_$_Recipe>(this, _$identity);
}

abstract class _Recipe implements Recipe {
  factory _Recipe({required final Item item, final List<Recipe> components}) =
      _$_Recipe;

  @override
  Item get item => throw _privateConstructorUsedError;
  @override
  List<Recipe> get components => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      throw _privateConstructorUsedError;
}
