import 'package:json_annotation/json_annotation.dart';

part 'server_message.g.dart';

@JsonSerializable(createFactory: true)
class ServerMessage {
  final String? uz;
  final String? ru;
  final String? en;

  ServerMessage({
    this.uz,
    this.ru,
    this.en,
  });

  factory ServerMessage.fromJson(Map<String, dynamic> json) =>
      _$ServerMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ServerMessageToJson(this);
}
