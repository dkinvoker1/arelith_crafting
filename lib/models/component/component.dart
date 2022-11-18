import 'package:freezed_annotation/freezed_annotation.dart';

part 'component.freezed.dart';
part 'component.g.dart';

@freezed
class Component with _$Component {
  factory Component({
    required String documentId,
    @Default(1) int quantity,
  }) = _Component;

  factory Component.fromJson(Map<String, Object?> json) => _$ComponentFromJson(json);
}
