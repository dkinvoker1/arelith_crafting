// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_edit_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) load,
    required TResult Function() loaded,
    required TResult Function(String key, dynamic value) update,
    required TResult Function(PlatformFile file) setImage,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Update value) update,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditItemEventCopyWith<$Res> {
  factory $AddEditItemEventCopyWith(
          AddEditItemEvent value, $Res Function(AddEditItemEvent) then) =
      _$AddEditItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddEditItemEventCopyWithImpl<$Res>
    implements $AddEditItemEventCopyWith<$Res> {
  _$AddEditItemEventCopyWithImpl(this._value, this._then);

  final AddEditItemEvent _value;
  // ignore: unused_field
  final $Res Function(AddEditItemEvent) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
  $Res call({String itemId});
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res> extends _$AddEditItemEventCopyWithImpl<$Res>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, (v) => _then(v as _$_Load));

  @override
  _$_Load get _value => super._value as _$_Load;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_$_Load(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load(this.itemId);

  @override
  final String itemId;

  @override
  String toString() {
    return 'AddEditItemEvent.load(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) load,
    required TResult Function() loaded,
    required TResult Function(String key, dynamic value) update,
    required TResult Function(PlatformFile file) setImage,
    required TResult Function() save,
  }) {
    return load(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
  }) {
    return load?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Update value) update,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_Save value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements AddEditItemEvent {
  const factory _Load(final String itemId) = _$_Load;

  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$AddEditItemEventCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'AddEditItemEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) load,
    required TResult Function() loaded,
    required TResult Function(String key, dynamic value) update,
    required TResult Function(PlatformFile file) setImage,
    required TResult Function() save,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Update value) update,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_Save value) save,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AddEditItemEvent {
  const factory _Loaded() = _$_Loaded;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  $Res call({String key, dynamic value});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$AddEditItemEventCopyWithImpl<$Res>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, (v) => _then(v as _$_Update));

  @override
  _$_Update get _value => super._value as _$_Update;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Update(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.key, this.value);

  @override
  final String key;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'AddEditItemEvent.update(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) load,
    required TResult Function() loaded,
    required TResult Function(String key, dynamic value) update,
    required TResult Function(PlatformFile file) setImage,
    required TResult Function() save,
  }) {
    return update(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
  }) {
    return update?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Update value) update,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_Save value) save,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements AddEditItemEvent {
  const factory _Update(final String key, final dynamic value) = _$_Update;

  String get key => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetImageCopyWith<$Res> {
  factory _$$_SetImageCopyWith(
          _$_SetImage value, $Res Function(_$_SetImage) then) =
      __$$_SetImageCopyWithImpl<$Res>;
  $Res call({PlatformFile file});
}

/// @nodoc
class __$$_SetImageCopyWithImpl<$Res>
    extends _$AddEditItemEventCopyWithImpl<$Res>
    implements _$$_SetImageCopyWith<$Res> {
  __$$_SetImageCopyWithImpl(
      _$_SetImage _value, $Res Function(_$_SetImage) _then)
      : super(_value, (v) => _then(v as _$_SetImage));

  @override
  _$_SetImage get _value => super._value as _$_SetImage;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$_SetImage(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile,
    ));
  }
}

/// @nodoc

class _$_SetImage implements _SetImage {
  const _$_SetImage(this.file);

  @override
  final PlatformFile file;

  @override
  String toString() {
    return 'AddEditItemEvent.setImage(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetImage &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$$_SetImageCopyWith<_$_SetImage> get copyWith =>
      __$$_SetImageCopyWithImpl<_$_SetImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) load,
    required TResult Function() loaded,
    required TResult Function(String key, dynamic value) update,
    required TResult Function(PlatformFile file) setImage,
    required TResult Function() save,
  }) {
    return setImage(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
  }) {
    return setImage?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Update value) update,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_Save value) save,
  }) {
    return setImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
  }) {
    return setImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(this);
    }
    return orElse();
  }
}

abstract class _SetImage implements AddEditItemEvent {
  const factory _SetImage(final PlatformFile file) = _$_SetImage;

  PlatformFile get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetImageCopyWith<_$_SetImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res> extends _$AddEditItemEventCopyWithImpl<$Res>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, (v) => _then(v as _$_Save));

  @override
  _$_Save get _value => super._value as _$_Save;
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'AddEditItemEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) load,
    required TResult Function() loaded,
    required TResult Function(String key, dynamic value) update,
    required TResult Function(PlatformFile file) setImage,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? load,
    TResult Function()? loaded,
    TResult Function(String key, dynamic value)? update,
    TResult Function(PlatformFile file)? setImage,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Update value) update,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Update value)? update,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements AddEditItemEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
mixin _$AddEditItemState {
  bool get isUploaded => throw _privateConstructorUsedError;
  bool get loadPrevious => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;
  Item get item => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  Uint8List? get fileBytes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditItemStateCopyWith<AddEditItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditItemStateCopyWith<$Res> {
  factory $AddEditItemStateCopyWith(
          AddEditItemState value, $Res Function(AddEditItemState) then) =
      _$AddEditItemStateCopyWithImpl<$Res>;
  $Res call(
      {bool isUploaded,
      bool loadPrevious,
      Exception? exception,
      Item item,
      String fileName,
      Uint8List? fileBytes});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$AddEditItemStateCopyWithImpl<$Res>
    implements $AddEditItemStateCopyWith<$Res> {
  _$AddEditItemStateCopyWithImpl(this._value, this._then);

  final AddEditItemState _value;
  // ignore: unused_field
  final $Res Function(AddEditItemState) _then;

  @override
  $Res call({
    Object? isUploaded = freezed,
    Object? loadPrevious = freezed,
    Object? exception = freezed,
    Object? item = freezed,
    Object? fileName = freezed,
    Object? fileBytes = freezed,
  }) {
    return _then(_value.copyWith(
      isUploaded: isUploaded == freezed
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
      loadPrevious: loadPrevious == freezed
          ? _value.loadPrevious
          : loadPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileBytes: fileBytes == freezed
          ? _value.fileBytes
          : fileBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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
abstract class _$$_AddItemStateCopyWith<$Res>
    implements $AddEditItemStateCopyWith<$Res> {
  factory _$$_AddItemStateCopyWith(
          _$_AddItemState value, $Res Function(_$_AddItemState) then) =
      __$$_AddItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isUploaded,
      bool loadPrevious,
      Exception? exception,
      Item item,
      String fileName,
      Uint8List? fileBytes});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_AddItemStateCopyWithImpl<$Res>
    extends _$AddEditItemStateCopyWithImpl<$Res>
    implements _$$_AddItemStateCopyWith<$Res> {
  __$$_AddItemStateCopyWithImpl(
      _$_AddItemState _value, $Res Function(_$_AddItemState) _then)
      : super(_value, (v) => _then(v as _$_AddItemState));

  @override
  _$_AddItemState get _value => super._value as _$_AddItemState;

  @override
  $Res call({
    Object? isUploaded = freezed,
    Object? loadPrevious = freezed,
    Object? exception = freezed,
    Object? item = freezed,
    Object? fileName = freezed,
    Object? fileBytes = freezed,
  }) {
    return _then(_$_AddItemState(
      isUploaded: isUploaded == freezed
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
      loadPrevious: loadPrevious == freezed
          ? _value.loadPrevious
          : loadPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileBytes: fileBytes == freezed
          ? _value.fileBytes
          : fileBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_AddItemState implements _AddItemState {
  const _$_AddItemState(
      {this.isUploaded = false,
      this.loadPrevious = false,
      this.exception = null,
      this.item = const Item(imageUrl: "", name: "", description: ""),
      this.fileName = '',
      this.fileBytes = null});

  @override
  @JsonKey()
  final bool isUploaded;
  @override
  @JsonKey()
  final bool loadPrevious;
  @override
  @JsonKey()
  final Exception? exception;
  @override
  @JsonKey()
  final Item item;
  @override
  @JsonKey()
  final String fileName;
  @override
  @JsonKey()
  final Uint8List? fileBytes;

  @override
  String toString() {
    return 'AddEditItemState(isUploaded: $isUploaded, loadPrevious: $loadPrevious, exception: $exception, item: $item, fileName: $fileName, fileBytes: $fileBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddItemState &&
            const DeepCollectionEquality()
                .equals(other.isUploaded, isUploaded) &&
            const DeepCollectionEquality()
                .equals(other.loadPrevious, loadPrevious) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.fileBytes, fileBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isUploaded),
      const DeepCollectionEquality().hash(loadPrevious),
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(fileBytes));

  @JsonKey(ignore: true)
  @override
  _$$_AddItemStateCopyWith<_$_AddItemState> get copyWith =>
      __$$_AddItemStateCopyWithImpl<_$_AddItemState>(this, _$identity);
}

abstract class _AddItemState implements AddEditItemState {
  const factory _AddItemState(
      {final bool isUploaded,
      final bool loadPrevious,
      final Exception? exception,
      final Item item,
      final String fileName,
      final Uint8List? fileBytes}) = _$_AddItemState;

  @override
  bool get isUploaded => throw _privateConstructorUsedError;
  @override
  bool get loadPrevious => throw _privateConstructorUsedError;
  @override
  Exception? get exception => throw _privateConstructorUsedError;
  @override
  Item get item => throw _privateConstructorUsedError;
  @override
  String get fileName => throw _privateConstructorUsedError;
  @override
  Uint8List? get fileBytes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddItemStateCopyWith<_$_AddItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
