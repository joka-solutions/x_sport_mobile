// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      favoritSports: (json['favorit_sports'] as List<dynamic>?)
          ?.map((e) => FavoritSport.fromJson(e as Map<String, dynamic>))
          .toList(),
      followers: json['followers'] as int?,
      acadmiesPoints: json['acadmies_points'] as int?,
      walletPoint: json['wallet_point'] as int?,
      matchesCount: json['matchesCount'] as int?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
      'favorit_sports': instance.favoritSports,
      'followers': instance.followers,
      'acadmies_points': instance.acadmiesPoints,
      'wallet_point': instance.walletPoint,
      'matchesCount': instance.matchesCount,
    };

_$FavoritSportImpl _$$FavoritSportImplFromJson(Map<String, dynamic> json) =>
    _$FavoritSportImpl(
      sportId: json['sport_id'] as int,
      name: json['name'] as String,
      level: json['level'] as String,
      point: json['point'] as int,
      preferences: (json['preferences'] as List<dynamic>?)
          ?.map((e) => Preference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FavoritSportImplToJson(_$FavoritSportImpl instance) =>
    <String, dynamic>{
      'sport_id': instance.sportId,
      'name': instance.name,
      'level': instance.level,
      'point': instance.point,
      'preferences': instance.preferences,
    };

_$PreferenceImpl _$$PreferenceImplFromJson(Map<String, dynamic> json) =>
    _$PreferenceImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PreferenceImplToJson(_$PreferenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'options': instance.options,
    };

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      isVerified: json['is_verified'] as bool,
      phone: json['phone'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'is_verified': instance.isVerified,
      'phone': instance.phone,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'image': instance.image,
    };
