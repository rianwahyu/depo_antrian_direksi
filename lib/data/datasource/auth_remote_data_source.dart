import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:dartz/dartz.dart';
import 'package:depo_antrian_direksi/config/app_constant.dart';
import 'package:depo_antrian_direksi/config/app_request.dart';
import 'package:depo_antrian_direksi/config/fcm_services.dart';
import 'package:depo_antrian_direksi/data/datasource/auth_local_datasource.dart';
import 'package:depo_antrian_direksi/data/models/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  Future<Either<String, AuthResponseModel>> login(
    String nik,
    String tglLahir,
  ) async {
    Map<String, dynamic> data = {
      'nik': nik,
      'tglLahir': tglLahir,
    };

    // Encode the data to JSON
    String jsonBody = json.encode(data);

    final url = Uri.parse('${AppConstant.baseUrl}/login');
    final response = await http.post(
      url,
      // headers: {
      //   'Content-Type': 'application/json',
      // },
      body: jsonBody,
    );

    if (response.statusCode == 200) {
      final fcmService = FCMService();
      String? fcmToken = await fcmService.getToken();

      print(response.body);

      await AuthLocalDataSource()
          .saveAuthData(AuthResponseModel.fromJson(response.body));

      await AuthLocalDataSource().saveTokenData(fcmToken!);

      saveToken(nik, fcmToken);
      

      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return const Left('Gagal Login');
    }
  }

  Future<void> saveToken(
    String nik,
    String token,
  ) async {
    Map<String, dynamic> data = {
      'nik': nik,
      'token': token,
    };

    // Encode the data to JSON
    String jsonBody = json.encode(data);

    final url = Uri.parse('${AppConstant.baseUrl}/saveTokenFirebase');
    final response = await http.post(
      url,
      // headers: {
      //   'Content-Type': 'application/json',
      // },
      body: jsonBody,
    );

    if (response.statusCode == 200) {
      DMethod.log(response.body);
    } else {
      DMethod.log(response.body);
    }
  }
  
  Future<Either<String, String>> logout() async {
    final url = Uri.parse('${AppConstant.baseUrl}/logout');
    // ignore: unused_local_variable
    final authDataModel = await AuthLocalDataSource().getAuthData();

    final response = await http.post(
      url,
    );

    if (response.statusCode == 200) {
      await AuthLocalDataSource().removeAuthData();
      return const Right('Logout  Berhasil');
    } else {
      return const Left('Gagal Login');
    }
  }
}
