import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:moovbe/api/endpoints.dart';
import 'package:moovbe/constants/shared_preference_helper.dart';
import 'package:moovbe/model/driver_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioClient {
  final Dio _dio = Dio();
  late SharedPreferenceHelper _sharedPreferenceHelper;
  final baseUrl = 'http://flutter.noviindus.co.in/api/';

  Future<dynamic> authenticate(String userName, String password) async {
    final Map<String, dynamic> data = {
      "username": userName,
      "password": password,
      // "twoFactorVerificationCode": "null",
      // "rememberClient": false,
      // "twoFactorRememberClientToken": "null",
      // "singleSignIn": true,
      // "returnUrl": "null",
      // "captchaResponse": "null"
    };
    try {
      final res = await _dio.post(
        baseUrl + Endpoints.authenticate,
        data: data,
        // followRedirects: false,
        // validateStatus: (status) {
        //   return status! <= 500;
        // },
      );
      print("ffffffffffff");
      print(res.data);
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> getDriver() async {
    try {
      final SharedPreferences sharedPreference =
          await SharedPreferences.getInstance();
      _sharedPreferenceHelper = SharedPreferenceHelper(sharedPreference);

      String? b = _sharedPreferenceHelper.ouId();
      String? token = _sharedPreferenceHelper.authToken();

      print("tttttttttttttttttttttttttttttttttttttttttt");
      print("$baseUrl${Endpoints.getDriverList}$b/");
      final res = await _dio.get(
        "$baseUrl${Endpoints.getDriverList}$b/",
        options: Options(
          headers: {"Authorization": "Bearer $token"},
          validateStatus: (status) {
            return status! <= 500;
          },
        ),
      );
      return res;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  Future<dynamic> postItem(DriverListResult data) async {
    try {
      final SharedPreferences sharedPreference =
          await SharedPreferences.getInstance();
      _sharedPreferenceHelper = SharedPreferenceHelper(sharedPreference);

      String? b = _sharedPreferenceHelper.ouId();
      String? token = _sharedPreferenceHelper.authToken();

      print("tttttttttttttttttttttttttttttttttttttttttt");
      print("$baseUrl${Endpoints.postDriverList}$b/");
      print(jsonEncode(data));
      final res = await _dio.post(
        "$baseUrl${Endpoints.postDriverList}$b/",
        data: jsonEncode(data),
        options: Options(
          headers: {"Authorization": "Bearer $token"},
          validateStatus: (status) {
            return status! <= 500;
          },
        ),
      );

      print("pppppppppppppppppppppppppppp");
      print(res.data);
      return res;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  Future<dynamic> deleteDriver(int id) async {
    try {
      final SharedPreferences sharedPreference =
          await SharedPreferences.getInstance();
      _sharedPreferenceHelper = SharedPreferenceHelper(sharedPreference);

      String? b = _sharedPreferenceHelper.ouId();
      String? token = _sharedPreferenceHelper.authToken();

      print("tttttttttttttttttttttttttttttttttttttttttt");
      print("$baseUrl${Endpoints.deleteDriverList}$b/");
      final res = await _dio.delete(
        "$baseUrl${Endpoints.deleteDriverList}$b/",
        data: {"driver_id": id},
        options: Options(
          headers: {"Authorization": "Bearer $token"},
          validateStatus: (status) {
            return status! <= 500;
          },
        ),
      );

      print("pppppppppppppppppppppppppppp");
      print(res.data);
      return res;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
