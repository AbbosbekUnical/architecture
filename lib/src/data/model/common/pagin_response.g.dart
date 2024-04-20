// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginResponse<T> _$PaginResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginResponse<T>(
      total: json['total'] as int?,
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );
