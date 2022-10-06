import 'package:arelith_crafting/models/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'component_item.freezed.dart';
part 'component_item.g.dart';

@freezed
class ComponentItem with _$ComponentItem {
  factory ComponentItem({
    required Item item,
    @Default(1) int quantity,
  }) = _ComponentItem;

  factory ComponentItem.fromJson(Map<String, Object?> json) =>
      _$ComponentItemFromJson(json);
}
