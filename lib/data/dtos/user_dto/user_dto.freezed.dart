// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "favorit_sports")
  List<FavoritSport>? get favoritSports => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  int? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "acadmies_points")
  int? get acadmiesPoints => throw _privateConstructorUsedError;
  @JsonKey(name: "wallet_point")
  int? get walletPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "matchesCount")
  int? get matchesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "user") User? user,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "favorit_sports") List<FavoritSport>? favoritSports,
      @JsonKey(name: "followers") int? followers,
      @JsonKey(name: "acadmies_points") int? acadmiesPoints,
      @JsonKey(name: "wallet_point") int? walletPoint,
      @JsonKey(name: "matchesCount") int? matchesCount});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
    Object? token = freezed,
    Object? favoritSports = freezed,
    Object? followers = freezed,
    Object? acadmiesPoints = freezed,
    Object? walletPoint = freezed,
    Object? matchesCount = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritSports: freezed == favoritSports
          ? _value.favoritSports
          : favoritSports // ignore: cast_nullable_to_non_nullable
              as List<FavoritSport>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      acadmiesPoints: freezed == acadmiesPoints
          ? _value.acadmiesPoints
          : acadmiesPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      walletPoint: freezed == walletPoint
          ? _value.walletPoint
          : walletPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      matchesCount: freezed == matchesCount
          ? _value.matchesCount
          : matchesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "user") User? user,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "favorit_sports") List<FavoritSport>? favoritSports,
      @JsonKey(name: "followers") int? followers,
      @JsonKey(name: "acadmies_points") int? acadmiesPoints,
      @JsonKey(name: "wallet_point") int? walletPoint,
      @JsonKey(name: "matchesCount") int? matchesCount});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
    Object? token = freezed,
    Object? favoritSports = freezed,
    Object? followers = freezed,
    Object? acadmiesPoints = freezed,
    Object? walletPoint = freezed,
    Object? matchesCount = freezed,
  }) {
    return _then(_$UserDtoImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritSports: freezed == favoritSports
          ? _value._favoritSports
          : favoritSports // ignore: cast_nullable_to_non_nullable
              as List<FavoritSport>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      acadmiesPoints: freezed == acadmiesPoints
          ? _value.acadmiesPoints
          : acadmiesPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      walletPoint: freezed == walletPoint
          ? _value.walletPoint
          : walletPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      matchesCount: freezed == matchesCount
          ? _value.matchesCount
          : matchesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl implements _UserDto {
  const _$UserDtoImpl(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "user") this.user,
      @JsonKey(name: "token") this.token,
      @JsonKey(name: "favorit_sports") final List<FavoritSport>? favoritSports,
      @JsonKey(name: "followers") this.followers,
      @JsonKey(name: "acadmies_points") this.acadmiesPoints,
      @JsonKey(name: "wallet_point") this.walletPoint,
      @JsonKey(name: "matchesCount") this.matchesCount})
      : _favoritSports = favoritSports;

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "user")
  final User? user;
  @override
  @JsonKey(name: "token")
  final String? token;
  final List<FavoritSport>? _favoritSports;
  @override
  @JsonKey(name: "favorit_sports")
  List<FavoritSport>? get favoritSports {
    final value = _favoritSports;
    if (value == null) return null;
    if (_favoritSports is EqualUnmodifiableListView) return _favoritSports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "followers")
  final int? followers;
  @override
  @JsonKey(name: "acadmies_points")
  final int? acadmiesPoints;
  @override
  @JsonKey(name: "wallet_point")
  final int? walletPoint;
  @override
  @JsonKey(name: "matchesCount")
  final int? matchesCount;

  @override
  String toString() {
    return 'UserDto(message: $message, user: $user, token: $token, favoritSports: $favoritSports, followers: $followers, acadmiesPoints: $acadmiesPoints, walletPoint: $walletPoint, matchesCount: $matchesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality()
                .equals(other._favoritSports, _favoritSports) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.acadmiesPoints, acadmiesPoints) ||
                other.acadmiesPoints == acadmiesPoints) &&
            (identical(other.walletPoint, walletPoint) ||
                other.walletPoint == walletPoint) &&
            (identical(other.matchesCount, matchesCount) ||
                other.matchesCount == matchesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      user,
      token,
      const DeepCollectionEquality().hash(_favoritSports),
      followers,
      acadmiesPoints,
      walletPoint,
      matchesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {@JsonKey(name: "message") final String? message,
      @JsonKey(name: "user") final User? user,
      @JsonKey(name: "token") final String? token,
      @JsonKey(name: "favorit_sports") final List<FavoritSport>? favoritSports,
      @JsonKey(name: "followers") final int? followers,
      @JsonKey(name: "acadmies_points") final int? acadmiesPoints,
      @JsonKey(name: "wallet_point") final int? walletPoint,
      @JsonKey(name: "matchesCount") final int? matchesCount}) = _$UserDtoImpl;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "user")
  User? get user;
  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "favorit_sports")
  List<FavoritSport>? get favoritSports;
  @override
  @JsonKey(name: "followers")
  int? get followers;
  @override
  @JsonKey(name: "acadmies_points")
  int? get acadmiesPoints;
  @override
  @JsonKey(name: "wallet_point")
  int? get walletPoint;
  @override
  @JsonKey(name: "matchesCount")
  int? get matchesCount;
  @override
  @JsonKey(ignore: true)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavoritSport _$FavoritSportFromJson(Map<String, dynamic> json) {
  return _FavoritSport.fromJson(json);
}

/// @nodoc
mixin _$FavoritSport {
  @JsonKey(name: "sport_id")
  int get sportId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: "point")
  int get point => throw _privateConstructorUsedError;
  @JsonKey(name: "preferences")
  List<Preference>? get preferences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritSportCopyWith<FavoritSport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritSportCopyWith<$Res> {
  factory $FavoritSportCopyWith(
          FavoritSport value, $Res Function(FavoritSport) then) =
      _$FavoritSportCopyWithImpl<$Res, FavoritSport>;
  @useResult
  $Res call(
      {@JsonKey(name: "sport_id") int sportId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "level") String level,
      @JsonKey(name: "point") int point,
      @JsonKey(name: "preferences") List<Preference>? preferences});
}

/// @nodoc
class _$FavoritSportCopyWithImpl<$Res, $Val extends FavoritSport>
    implements $FavoritSportCopyWith<$Res> {
  _$FavoritSportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportId = null,
    Object? name = null,
    Object? level = null,
    Object? point = null,
    Object? preferences = freezed,
  }) {
    return _then(_value.copyWith(
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as List<Preference>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritSportImplCopyWith<$Res>
    implements $FavoritSportCopyWith<$Res> {
  factory _$$FavoritSportImplCopyWith(
          _$FavoritSportImpl value, $Res Function(_$FavoritSportImpl) then) =
      __$$FavoritSportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sport_id") int sportId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "level") String level,
      @JsonKey(name: "point") int point,
      @JsonKey(name: "preferences") List<Preference>? preferences});
}

/// @nodoc
class __$$FavoritSportImplCopyWithImpl<$Res>
    extends _$FavoritSportCopyWithImpl<$Res, _$FavoritSportImpl>
    implements _$$FavoritSportImplCopyWith<$Res> {
  __$$FavoritSportImplCopyWithImpl(
      _$FavoritSportImpl _value, $Res Function(_$FavoritSportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportId = null,
    Object? name = null,
    Object? level = null,
    Object? point = null,
    Object? preferences = freezed,
  }) {
    return _then(_$FavoritSportImpl(
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      preferences: freezed == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as List<Preference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritSportImpl implements _FavoritSport {
  const _$FavoritSportImpl(
      {@JsonKey(name: "sport_id") required this.sportId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "level") required this.level,
      @JsonKey(name: "point") required this.point,
      @JsonKey(name: "preferences") final List<Preference>? preferences})
      : _preferences = preferences;

  factory _$FavoritSportImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritSportImplFromJson(json);

  @override
  @JsonKey(name: "sport_id")
  final int sportId;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "level")
  final String level;
  @override
  @JsonKey(name: "point")
  final int point;
  final List<Preference>? _preferences;
  @override
  @JsonKey(name: "preferences")
  List<Preference>? get preferences {
    final value = _preferences;
    if (value == null) return null;
    if (_preferences is EqualUnmodifiableListView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoritSport(sportId: $sportId, name: $name, level: $level, point: $point, preferences: $preferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritSportImpl &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.point, point) || other.point == point) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sportId, name, level, point,
      const DeepCollectionEquality().hash(_preferences));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritSportImplCopyWith<_$FavoritSportImpl> get copyWith =>
      __$$FavoritSportImplCopyWithImpl<_$FavoritSportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritSportImplToJson(
      this,
    );
  }
}

abstract class _FavoritSport implements FavoritSport {
  const factory _FavoritSport(
          {@JsonKey(name: "sport_id") required final int sportId,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "level") required final String level,
          @JsonKey(name: "point") required final int point,
          @JsonKey(name: "preferences") final List<Preference>? preferences}) =
      _$FavoritSportImpl;

  factory _FavoritSport.fromJson(Map<String, dynamic> json) =
      _$FavoritSportImpl.fromJson;

  @override
  @JsonKey(name: "sport_id")
  int get sportId;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "level")
  String get level;
  @override
  @JsonKey(name: "point")
  int get point;
  @override
  @JsonKey(name: "preferences")
  List<Preference>? get preferences;
  @override
  @JsonKey(ignore: true)
  _$$FavoritSportImplCopyWith<_$FavoritSportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Preference _$PreferenceFromJson(Map<String, dynamic> json) {
  return _Preference.fromJson(json);
}

/// @nodoc
mixin _$Preference {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<Option> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferenceCopyWith<Preference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceCopyWith<$Res> {
  factory $PreferenceCopyWith(
          Preference value, $Res Function(Preference) then) =
      _$PreferenceCopyWithImpl<$Res, Preference>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "options") List<Option> options});
}

/// @nodoc
class _$PreferenceCopyWithImpl<$Res, $Val extends Preference>
    implements $PreferenceCopyWith<$Res> {
  _$PreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferenceImplCopyWith<$Res>
    implements $PreferenceCopyWith<$Res> {
  factory _$$PreferenceImplCopyWith(
          _$PreferenceImpl value, $Res Function(_$PreferenceImpl) then) =
      __$$PreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "options") List<Option> options});
}

/// @nodoc
class __$$PreferenceImplCopyWithImpl<$Res>
    extends _$PreferenceCopyWithImpl<$Res, _$PreferenceImpl>
    implements _$$PreferenceImplCopyWith<$Res> {
  __$$PreferenceImplCopyWithImpl(
      _$PreferenceImpl _value, $Res Function(_$PreferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_$PreferenceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferenceImpl implements _Preference {
  const _$PreferenceImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "options") required final List<Option> options})
      : _options = options;

  factory _$PreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferenceImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  final List<Option> _options;
  @override
  @JsonKey(name: "options")
  List<Option> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'Preference(id: $id, name: $name, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceImplCopyWith<_$PreferenceImpl> get copyWith =>
      __$$PreferenceImplCopyWithImpl<_$PreferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferenceImplToJson(
      this,
    );
  }
}

abstract class _Preference implements Preference {
  const factory _Preference(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "options") required final List<Option> options}) =
      _$PreferenceImpl;

  factory _Preference.fromJson(Map<String, dynamic> json) =
      _$PreferenceImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "options")
  List<Option> get options;
  @override
  @JsonKey(ignore: true)
  _$$PreferenceImplCopyWith<_$PreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res, Option>;
  @useResult
  $Res call({@JsonKey(name: "id") int id, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res, $Val extends Option>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionImplCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$OptionImplCopyWith(
          _$OptionImpl value, $Res Function(_$OptionImpl) then) =
      __$$OptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int id, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$OptionImplCopyWithImpl<$Res>
    extends _$OptionCopyWithImpl<$Res, _$OptionImpl>
    implements _$$OptionImplCopyWith<$Res> {
  __$$OptionImplCopyWithImpl(
      _$OptionImpl _value, $Res Function(_$OptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$OptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionImpl implements _Option {
  const _$OptionImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name});

  factory _$OptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'Option(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      __$$OptionImplCopyWithImpl<_$OptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionImplToJson(
      this,
    );
  }
}

abstract class _Option implements Option {
  const factory _Option(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name}) = _$OptionImpl;

  factory _Option.fromJson(Map<String, dynamic> json) = _$OptionImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "is_verified")
  bool get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "is_verified") bool isVerified,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "longitude") String longitude,
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "image") String image});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? isVerified = null,
    Object? phone = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "is_verified") bool isVerified,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "longitude") String longitude,
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "image") String image});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? isVerified = null,
    Object? phone = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? image = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "is_verified") required this.isVerified,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "longitude") required this.longitude,
      @JsonKey(name: "latitude") required this.latitude,
      @JsonKey(name: "image") required this.image});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "is_verified")
  final bool isVerified;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "longitude")
  final String longitude;
  @override
  @JsonKey(name: "latitude")
  final String latitude;
  @override
  @JsonKey(name: "image")
  final String image;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, isVerified: $isVerified, phone: $phone, longitude: $longitude, latitude: $latitude, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, isVerified,
      phone, longitude, latitude, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "email") required final String email,
      @JsonKey(name: "is_verified") required final bool isVerified,
      @JsonKey(name: "phone") required final String phone,
      @JsonKey(name: "longitude") required final String longitude,
      @JsonKey(name: "latitude") required final String latitude,
      @JsonKey(name: "image") required final String image}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "is_verified")
  bool get isVerified;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "longitude")
  String get longitude;
  @override
  @JsonKey(name: "latitude")
  String get latitude;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
