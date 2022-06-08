// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rootItemDocumentPath) search,
    required TResult Function(Offset offset) addPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String rootItemDocumentPath)? search,
    TResult Function(Offset offset)? addPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rootItemDocumentPath)? search,
    TResult Function(Offset offset)? addPoint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_AddPoint value) addPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_AddPoint value)? addPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res> implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  final RecipeEvent _value;
  // ignore: unused_field
  final $Res Function(RecipeEvent) _then;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  $Res call({String rootItemDocumentPath});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res> extends _$RecipeEventCopyWithImpl<$Res>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, (v) => _then(v as _$_Search));

  @override
  _$_Search get _value => super._value as _$_Search;

  @override
  $Res call({
    Object? rootItemDocumentPath = freezed,
  }) {
    return _then(_$_Search(
      rootItemDocumentPath == freezed
          ? _value.rootItemDocumentPath
          : rootItemDocumentPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.rootItemDocumentPath);

  @override
  final String rootItemDocumentPath;

  @override
  String toString() {
    return 'RecipeEvent.search(rootItemDocumentPath: $rootItemDocumentPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            const DeepCollectionEquality()
                .equals(other.rootItemDocumentPath, rootItemDocumentPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rootItemDocumentPath));

  @JsonKey(ignore: true)
  @override
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rootItemDocumentPath) search,
    required TResult Function(Offset offset) addPoint,
  }) {
    return search(rootItemDocumentPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String rootItemDocumentPath)? search,
    TResult Function(Offset offset)? addPoint,
  }) {
    return search?.call(rootItemDocumentPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rootItemDocumentPath)? search,
    TResult Function(Offset offset)? addPoint,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(rootItemDocumentPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_AddPoint value) addPoint,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_AddPoint value)? addPoint,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements RecipeEvent {
  const factory _Search(final String rootItemDocumentPath) = _$_Search;

  String get rootItemDocumentPath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddPointCopyWith<$Res> {
  factory _$$_AddPointCopyWith(
          _$_AddPoint value, $Res Function(_$_AddPoint) then) =
      __$$_AddPointCopyWithImpl<$Res>;
  $Res call({Offset offset});
}

/// @nodoc
class __$$_AddPointCopyWithImpl<$Res> extends _$RecipeEventCopyWithImpl<$Res>
    implements _$$_AddPointCopyWith<$Res> {
  __$$_AddPointCopyWithImpl(
      _$_AddPoint _value, $Res Function(_$_AddPoint) _then)
      : super(_value, (v) => _then(v as _$_AddPoint));

  @override
  _$_AddPoint get _value => super._value as _$_AddPoint;

  @override
  $Res call({
    Object? offset = freezed,
  }) {
    return _then(_$_AddPoint(
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_AddPoint implements _AddPoint {
  const _$_AddPoint(this.offset);

  @override
  final Offset offset;

  @override
  String toString() {
    return 'RecipeEvent.addPoint(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPoint &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$$_AddPointCopyWith<_$_AddPoint> get copyWith =>
      __$$_AddPointCopyWithImpl<_$_AddPoint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rootItemDocumentPath) search,
    required TResult Function(Offset offset) addPoint,
  }) {
    return addPoint(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String rootItemDocumentPath)? search,
    TResult Function(Offset offset)? addPoint,
  }) {
    return addPoint?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rootItemDocumentPath)? search,
    TResult Function(Offset offset)? addPoint,
    required TResult orElse(),
  }) {
    if (addPoint != null) {
      return addPoint(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_AddPoint value) addPoint,
  }) {
    return addPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_AddPoint value)? addPoint,
  }) {
    return addPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_AddPoint value)? addPoint,
    required TResult orElse(),
  }) {
    if (addPoint != null) {
      return addPoint(this);
    }
    return orElse();
  }
}

abstract class _AddPoint implements RecipeEvent {
  const factory _AddPoint(final Offset offset) = _$_AddPoint;

  Offset get offset => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddPointCopyWith<_$_AddPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeState {
  Recipe? get recipe => throw _privateConstructorUsedError;
  List<Offset> get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStateCopyWith<RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res>;
  $Res call({Recipe? recipe, List<Offset> points});

  $RecipeCopyWith<$Res>? get recipe;
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res> implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  final RecipeState _value;
  // ignore: unused_field
  final $Res Function(RecipeState) _then;

  @override
  $Res call({
    Object? recipe = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }

  @override
  $RecipeCopyWith<$Res>? get recipe {
    if (_value.recipe == null) {
      return null;
    }

    return $RecipeCopyWith<$Res>(_value.recipe!, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecipeStateCopyWith<$Res>
    implements $RecipeStateCopyWith<$Res> {
  factory _$$_RecipeStateCopyWith(
          _$_RecipeState value, $Res Function(_$_RecipeState) then) =
      __$$_RecipeStateCopyWithImpl<$Res>;
  @override
  $Res call({Recipe? recipe, List<Offset> points});

  @override
  $RecipeCopyWith<$Res>? get recipe;
}

/// @nodoc
class __$$_RecipeStateCopyWithImpl<$Res> extends _$RecipeStateCopyWithImpl<$Res>
    implements _$$_RecipeStateCopyWith<$Res> {
  __$$_RecipeStateCopyWithImpl(
      _$_RecipeState _value, $Res Function(_$_RecipeState) _then)
      : super(_value, (v) => _then(v as _$_RecipeState));

  @override
  _$_RecipeState get _value => super._value as _$_RecipeState;

  @override
  $Res call({
    Object? recipe = freezed,
    Object? points = freezed,
  }) {
    return _then(_$_RecipeState(
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe?,
      points: points == freezed
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// @nodoc

class _$_RecipeState implements _RecipeState {
  _$_RecipeState(
      {this.recipe = null, final List<Offset> points = const <Offset>[]})
      : _points = points;

  @override
  @JsonKey()
  final Recipe? recipe;
  final List<Offset> _points;
  @override
  @JsonKey()
  List<Offset> get points {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'RecipeState(recipe: $recipe, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeState &&
            const DeepCollectionEquality().equals(other.recipe, recipe) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recipe),
      const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeStateCopyWith<_$_RecipeState> get copyWith =>
      __$$_RecipeStateCopyWithImpl<_$_RecipeState>(this, _$identity);
}

abstract class _RecipeState implements RecipeState {
  factory _RecipeState({final Recipe? recipe, final List<Offset> points}) =
      _$_RecipeState;

  @override
  Recipe? get recipe => throw _privateConstructorUsedError;
  @override
  List<Offset> get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeStateCopyWith<_$_RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
