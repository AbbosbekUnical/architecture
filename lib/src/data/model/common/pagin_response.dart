import 'package:json_annotation/json_annotation.dart';

part 'pagin_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class PaginResponse<T> {
  final int? total;
  final List<T>? data;

  PaginResponse({
    this.total,
    this.data,
  });

  factory PaginResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginResponseFromJson(
        json,
        (json) => fromJsonT(json),
      );
}
