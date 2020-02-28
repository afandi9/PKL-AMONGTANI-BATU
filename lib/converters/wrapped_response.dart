import 'package:json_annotation/json_annotation.dart';

part 'wrapped_response.g.dart';

@JsonSerializable()

class WrappedResponse{
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "status")
  bool status;
  @JsonKey(name: "data")
  Map<String, dynamic> data;
  @JsonKey(name: "error")
  String error;

  WrappedResponse();

  factory WrappedResponse.fromJson(Map<String, dynamic> json) => _$WrappedResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WrappedResponseToJson(this);
}