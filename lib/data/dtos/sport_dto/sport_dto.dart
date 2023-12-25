// To parse this JSON data, do
//
//     final sportDto = sportDtoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'sport_dto.freezed.dart';
part 'sport_dto.g.dart';

List<SportDto> sportDtoFromJson(String str) =>
    List<SportDto>.from(json.decode(str).map((x) => SportDto.fromJson(x)));

String sportDtoToJson(List<SportDto> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SportDto with _$SportDto {
  const factory SportDto({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
  }) = _SportDto;

  factory SportDto.fromJson(Map<String, dynamic> json) =>
      _$SportDtoFromJson(json);
}
