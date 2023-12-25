// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:x_sport/core/services/api_service.dart';
import 'package:x_sport/data/dtos/sport_dto/sport_dto.dart';
import 'package:http/http.dart' as http;
import '../../core/constance/api_constance.dart';
import '../../core/error/exceptions.dart';
import '../../core/network/error_message_model.dart';
import '../../core/services/locator/service_locator.dart';
import '../../core/services/secure_storage_service.dart.dart';
import '../../presentation/controllers/fileds_bloc.dart';
import '../dtos/user_dto/user_dto.dart';

abstract class BaseUserRemoteDataSource {
  Future<UserDto> signIn();

  Future<UserDto> signUp();
  Future<UserDto> getUserInfo();

  Future<bool> checkUserLogged();
  Future<bool> validateAccount();
  Future<bool> logoutUser();
  Future<List<SportDto>> getSports();
  Future<UserDto> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports);
}

class UserRemoteDataSource extends BaseUserRemoteDataSource {
  final dio = Dio();
  final token = sl<SecureStorageService>().read('token');

  @override
  Future<UserDto> signIn() async {
    final postData = {
      'email_or_phone': signInStream.emailPhoneValue,
      'password': signInStream.passwordValue,
    };
    print('signinpostData ${postData}');
    try {
      final response = await ApiService.post(ApiConstance.signInApi, postData);
      print('signin ${response.data}');
      print("response.statusCode ${response.statusCode}");

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        final token = data['token'];
        await sl<SecureStorageService>().write('token', token);

        return userDtoFromJson(stringData);
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      print('error ${e.runtimeType}');
      throw ServerException(errorModel: ErrorModel.formJson({}));
    }
  }

  @override
  Future<bool> checkUserLogged() async {
    final isLogged = await sl<SecureStorageService>().containsKey('token');
    print("isLogged $isLogged");
    if (isLogged) {
      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson({'status': 401}));
    }
  }

  @override
  Future<UserDto> signUp() async {
    final postData = {
      'name': registerStream.nameValue,
      'email': registerStream.emailValue,
      'password': registerStream.passwordValue,
      'password_confirmation': registerStream.confValue,
      'phone': registerStream.phoneValue,
      'longitude': registerStream.longeValue,
      'latitude': registerStream.latValue,
    };
    print("signUppostData ${postData}");

    final response = await ApiService.post(ApiConstance.signUpApi, postData);
    final data = response.data;

    print("signUp ${response.statusCode}");
    print("signUp $data");
    if (response.statusCode == 200) {
      final token = data['token'];
      sl<SecureStorageService>().write('token', token);
      print('user created');

      return userDtoFromJson(json.encode(data));
    } else {
      // return userDtoFromJson(json.encode(data));

      throw ServerException(errorModel: ErrorModel.formJson({'status': 0}));
    }
  }

  @override
  Future<bool> validateAccount() async {
    final postData = {
      'email': registerStream.emailValue,
      'otp': registerStream.codeValue,
    };
    final response = await ApiService.post(ApiConstance.signUpApi, postData);
    final data = response.data;

    print("signUp ${response.statusCode}");
    print("signUp $data");
    if (response.statusCode == 200) {
      final token = data['user']['token'];
      sl<SecureStorageService>().write('token', token);
      print('user created');

      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<bool> logoutUser() async {
    final response = await ApiService.get(ApiConstance.signUpApi);
    final data = response.data;

    if (response.statusCode == 200) {
      sl<SecureStorageService>().delete('token');
      print('user log out');

      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<List<SportDto>> getSports() async {
    final response = await ApiService.get(ApiConstance.getSportsApi);
    final data = response.data;

    if (response.statusCode == 200) {
      print('getSports ${data}');

      return sportDtoFromJson(json.encode(data));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserDto> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports) async {
    FormData formData = FormData();
    formData.files.add(MapEntry(
      'profile_image',
      MultipartFile.fromBytes(
        imageBytes,
        filename: 'profile_image.$imageType',
      ),
    ));

    formData.fields.add(MapEntry('type', imageType));

    // formData.fields
    //     .add(MapEntry('selected_sports[]', selectedSports.toString()));

    for (int sportId in selectedSports) {
      formData.fields.add(MapEntry('selected_sports[]', sportId.toString()));
    }
    print("sendImageAndSports ${formData.fields}");

    final response = await ApiService.postFormData(
        ApiConstance.sendImageAndSportsApi, formData);
    final data = response.data;
    print("sendImageAndSports $data");

    if (response.statusCode == 200) {
      return userDtoFromJson(json.encode(data));
    } else {
      print("Error Response: ${response.data}");
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserDto> getUserInfo() async {
    try {
      final response = await ApiService.get(ApiConstance.getUserInfoApi);
      print('getUserInfo ${response.data}');
      print("response.statusCode ${response.statusCode}");

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        return userDtoFromJson(stringData);
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      print('error ${e.runtimeType}');
      throw ServerException(errorModel: ErrorModel.formJson({}));
    }
  }
}
