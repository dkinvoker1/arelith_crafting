// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  List<ItemCategory> get categories => throw _privateConstructorUsedError;
  List<Component> get components => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String imageUrl,
      String name,
      String description,
      int height,
      int width,
      String documentId,
      List<ItemCategory> categories,
      List<Component> components});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? name = null,
    Object? description = null,
    Object? height = null,
    Object? width = null,
    Object? documentId = null,
    Object? categories = null,
    Object? components = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ItemCategory>,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Component>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageUrl,
      String name,
      String description,
      int height,
      int width,
      String documentId,
      List<ItemCategory> categories,
      List<Component> components});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? name = null,
    Object? description = null,
    Object? height = null,
    Object? width = null,
    Object? documentId = null,
    Object? categories = null,
    Object? components = null,
  }) {
    return _then(_$_Item(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ItemCategory>,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Component>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item with DiagnosticableTreeMixin implements _Item {
  const _$_Item(
      {required this.imageUrl,
      required this.name,
      required this.description,
      required this.height,
      required this.width,
      this.documentId = '',
      this.categories = const [],
      this.components = const []});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String description;
  @override
  final int height;
  @override
  final int width;
  @override
  @JsonKey()
  final String documentId;
  @override
  @JsonKey()
  final List<ItemCategory> categories;
  @override
  @JsonKey()
  final List<Component> components;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(imageUrl: $imageUrl, name: $name, description: $description, height: $height, width: $width, documentId: $documentId, categories: $categories, components: $components)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('documentId', documentId))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('components', components));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.components, components));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageUrl,
      name,
      description,
      height,
      width,
      documentId,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(components));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String imageUrl,
      required final String name,
      required final String description,
      required final int height,
      required final int width,
      final String documentId,
      final List<ItemCategory> categories,
      final List<Component> components}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get imageUrl;
  @override
  String get name;
  @override
  String get description;
  @override
  int get height;
  @override
  int get width;
  @override
  String get documentId;
  @override
  List<ItemCategory> get categories;
  @override
  List<Component> get components;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
