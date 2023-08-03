import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rotatory_app/core/api.dart';
import 'package:rotatory_app/features/login/data/model/user_model.dart';

class UserRepository {
  final _api = Api();

  //

  Future<UserModel> signIn({
    required String phone,
    required String password,
  }) async {
    try {
      Response response = await _api.sendRequest.post("/login",
          data: jsonEncode({"primary_contact": phone, "password": password}));

      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.status) {
        throw apiResponse.message.toString();
      }

      return UserModel.fromJson(apiResponse.data as Map<String, dynamic>);
    } catch (ex) {
      rethrow;
    }
  }

  Future<String> generateOtp({
    required String phone,
  }) async {
    try {
      Response response = await _api.sendRequest.get(
        "/generate-otp?primary_contact=$phone",
      );

      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.status) {
        throw apiResponse.message.toString();
      }

      return apiResponse.data as String;
    } catch (ex) {
      rethrow;
    }
  }
}
