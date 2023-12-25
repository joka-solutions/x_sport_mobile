// To parse this JSON data, do
//
//     final userDto = userDtoFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

UserDto userDtoFromJson(String str) => UserDto.fromJson(json.decode(str));

String userDtoToJson(UserDto data) => json.encode(data.toJson());

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "user") User? user,
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "favorit_sports") List<FavoritSport>? favoritSports,
    @JsonKey(name: "followers") int? followers,
    @JsonKey(name: "acadmies_points") int? acadmiesPoints,
    @JsonKey(name: "wallet_point") int? walletPoint,
    @JsonKey(name: "matchesCount") int? matchesCount,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
class FavoritSport with _$FavoritSport {
  const factory FavoritSport({
    @JsonKey(name: "sport_id") required int sportId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "level") required String level,
    @JsonKey(name: "point") required int point,
    @JsonKey(name: "preferences") List<Preference>? preferences,
  }) = _FavoritSport;

  factory FavoritSport.fromJson(Map<String, dynamic> json) =>
      _$FavoritSportFromJson(json);
}

@freezed
class Preference with _$Preference {
  const factory Preference({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "options") required List<Option> options,
  }) = _Preference;

  factory Preference.fromJson(Map<String, dynamic> json) =>
      _$PreferenceFromJson(json);
}

@freezed
class Option with _$Option {
  const factory Option({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "is_verified") required bool isVerified,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "longitude") required String longitude,
    @JsonKey(name: "latitude") required String latitude,
    @JsonKey(name: "image") required String image,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
