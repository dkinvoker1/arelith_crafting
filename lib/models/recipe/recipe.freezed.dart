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
  RecipeItem get recipeItem => throw _privateConstructorUsedError;
  List<Recipe> get components => throw _privateConstructorUsedError;
  int get underMe => throw _privateConstructorUsedError;
  bool get isPlaceholder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call(
      {RecipeItem recipeItem,
      List<Recipe> components,
      int underMe,
      bool isPlaceholder});

  $RecipeItemCopyWith<$Res> get recipeItem;
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe) _then;

  @override
  $Res call({
    Object? recipeItem = freezed,
    Object? components = freezed,
    Object? underMe = freezed,
    Object? isPlaceholder = freezed,
  }) {
    return _then(_value.copyWith(
      recipeItem: recipeItem == freezed
          ? _value.recipeItem
          : recipeItem // ignore: cast_nullable_to_non_nullable
              as RecipeItem,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      underMe: underMe == freezed
          ? _value.underMe
          : underMe // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaceholder: isPlaceholder == freezed
          ? _value.isPlaceholder
          : isPlaceholder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $RecipeItemCopyWith<$Res> get recipeItem {
    return $RecipeItemCopyWith<$Res>(_value.recipeItem, (value) {
      return _then(_value.copyWith(recipeItem: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$_RecipeCopyWith(_$_Recipe value, $Res Function(_$_Recipe) then) =
      __$$_RecipeCopyWithImpl<$Res>;
  @override
  $Res call(
      {RecipeItem recipeItem,
      List<Recipe> components,
      int underMe,
      bool isPlaceholder});

  @override
  $RecipeItemCopyWith<$Res> get recipeItem;
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
    Object? recipeItem = freezed,
    Object? components = freezed,
    Object? underMe = freezed,
    Object? isPlaceholder = freezed,
  }) {
    return _then(_$_Recipe(
      recipeItem: recipeItem == freezed
          ? _value.recipeItem
          : recipeItem // ignore: cast_nullable_to_non_nullable
              as RecipeItem,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      underMe: underMe == freezed
          ? _value.underMe
          : underMe // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaceholder: isPlaceholder == freezed
          ? _value.isPlaceholder
          : isPlaceholder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Recipe implements _Recipe {
  _$_Recipe(
      {required this.recipeItem,
      this.components = const [],
      this.underMe = 0,
      this.isPlaceholder = false});

  @override
  final RecipeItem recipeItem;
  @override
  @JsonKey()
  final List<Recipe> components;
  @override
  @JsonKey()
  final int underMe;
  @override
  @JsonKey()
  final bool isPlaceholder;

  @override
  String toString() {
    return 'Recipe(recipeItem: $recipeItem, components: $components, underMe: $underMe, isPlaceholder: $isPlaceholder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipe &&
            const DeepCollectionEquality()
                .equals(other.recipeItem, recipeItem) &&
            const DeepCollectionEquality()
                .equals(other.components, components) &&
            const DeepCollectionEquality().equals(other.underMe, underMe) &&
            const DeepCollectionEquality()
                .equals(other.isPlaceholder, isPlaceholder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recipeItem),
      const DeepCollectionEquality().hash(components),
      const DeepCollectionEquality().hash(underMe),
      const DeepCollectionEquality().hash(isPlaceholder));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      __$$_RecipeCopyWithImpl<_$_Recipe>(this, _$identity);
}

abstract class _Recipe implements Recipe {
  factory _Recipe(
      {required final RecipeItem recipeItem,
      final List<Recipe> components,
      final int underMe,
      final bool isPlaceholder}) = _$_Recipe;

  @override
  RecipeItem get recipeItem => throw _privateConstructorUsedError;
  @override
  List<Recipe> get components => throw _privateConstructorUsedError;
  @override
  int get underMe => throw _privateConstructorUsedError;
  @override
  bool get isPlaceholder => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      throw _privateConstructorUsedError;
}