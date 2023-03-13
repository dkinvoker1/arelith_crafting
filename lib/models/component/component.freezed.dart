// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Component _$ComponentFromJson(Map<String, dynamic> json) {
  return _Component.fromJson(json);
}

/// @nodoc
mixin _$Component {
  String get documentId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComponentCopyWith<Component> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentCopyWith<$Res> {
  factory $ComponentCopyWith(Component value, $Res Function(Component) then) =
      _$ComponentCopyWithImpl<$Res, Component>;
  @useResult
  $Res call({String documentId, int quantity});
}

/// @nodoc
class _$ComponentCopyWithImpl<$Res, $Val extends Component>
    implements $ComponentCopyWith<$Res> {
  _$ComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComponentCopyWith<$Res> implements $ComponentCopyWith<$Res> {
  factory _$$_ComponentCopyWith(
          _$_Component value, $Res Function(_$_Component) then) =
      __$$_ComponentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String documentId, int quantity});
}

/// @nodoc
class __$$_ComponentCopyWithImpl<$Res>
    extends _$ComponentCopyWithImpl<$Res, _$_Component>
    implements _$$_ComponentCopyWith<$Res> {
  __$$_ComponentCopyWithImpl(
      _$_Component _value, $Res Function(_$_Component) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? quantity = null,
  }) {
    return _then(_$_Component(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Component implements _Component {
  _$_Component({required this.documentId, this.quantity = 1});

  factory _$_Component.fromJson(Map<String, dynamic> json) =>
      _$$_ComponentFromJson(json);

  @override
  final String documentId;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'Component(documentId: $documentId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Component &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, documentId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComponentCopyWith<_$_Component> get copyWith =>
      __$$_ComponentCopyWithImpl<_$_Component>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComponentToJson(
      this,
    );
  }
}

abstract class _Component implements Component {
  factory _Component({required final String documentId, final int quantity}) =
      _$_Component;

  factory _Component.fromJson(Map<String, dynamic> json) =
      _$_Component.fromJson;

  @override
  String get documentId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ComponentCopyWith<_$_Component> get copyWith =>
      throw _privateConstructorUsedError;
}
