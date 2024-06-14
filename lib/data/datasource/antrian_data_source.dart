import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:dartz/dartz.dart';
import 'package:depo_antrian_direksi/config/app_constant.dart';
import 'package:depo_antrian_direksi/data/datasource/auth_local_datasource.dart';
import 'package:depo_antrian_direksi/data/models/response/antrian_data_response_model.dart';

import 'package:http/http.dart' as http;

class AntrianDataSource {
  Future<Either<String, String>> createAntrian(
    String nik,
    String keperluan,
  ) async {    
    await AuthLocalDataSource().getAuthData();
    
    Map<String, dynamic> data = {
      'nik': nik,
      'keperluan': keperluan,
      'statusAntrian': 'Antri',
    };

    // Encode the data to JSON
    String jsonBody = json.encode(data);

    final url = Uri.parse('${AppConstant.baseUrl}/antrian_create');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonBody,
    );

    if (response.statusCode == 201) {
      return const Right('Berhasil membuat Antrian');
    } else {
      return  const Left('Gagal Login');
    }

    
  }

   Future<Either<String, AntrianDataResponseModel>> getAntrian() async {
    //final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${AppConstant.baseUrl}/antrian_read');
    final response = await http.get(
      url,
      // headers: {
      //   'Authorization': 'Bearer ${authData?.token}',
      //   'Accept': 'application/json',
      // },
    );

    if (response.statusCode == 200) {
      DMethod.log(response.body);
      return Right(AntrianDataResponseModel.fromJson(response.body));
    } else {
      DMethod.log(response.body);
      return const Left('Gagal mendapatkan data antrian');
    }
  }
}
