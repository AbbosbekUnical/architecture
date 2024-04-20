import 'package:architecture/src/data/model/common/server_message.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class BaseResponse<T> {
  final int? code;
  final String? message;
  final T? data;
  final ServerMessage? messages;
  final DateTime? dateTime;

  BaseResponse({
    this.code,
    this.message,
    this.data,
    this.messages,
    this.dateTime,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(
        json,
        (json) => fromJsonT(json),
      );
}
