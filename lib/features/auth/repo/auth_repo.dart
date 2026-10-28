import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hungry/api/api_endpoint.dart';
import 'package:hungry/features/auth/models/auth_params.dart';
import 'package:hungry/services/dio_provider.dart';

class AuthRepo {
  static Future<AuthParams?> register(AuthParams params) async {
    try {
      var res = await DioProvider.post(
        path: ApiEndpoint.register,
        data: params.toJson(),
      );
      if (res.statusCode == 201) {
        var body = res.data;
        return AuthParams.fromJson(body);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }

  login() async {
    var res = await Dio().post(
      ApiEndpoint.login,
      data: {"email": "mohameda@gmail.com", "password": "123456789"},
    );
    if (res.statusCode == 200) {
      //success
    } else {
      //error
    }
  }
}
