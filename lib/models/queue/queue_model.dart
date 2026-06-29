import 'package:example/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'queue_model.freezed.dart';
part 'queue_model.g.dart';

@freezed
abstract class QueueModel with _$QueueModel {
  const factory QueueModel({
    required int id,
    required String name,
    required QueueType type,
  }) = _QueueModel;

  factory QueueModel.fromJson(Map<String, dynamic> json) =>
      _$QueueModelFromJson(json);
}
