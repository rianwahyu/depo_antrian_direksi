import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:dartz/dartz.dart';
import 'package:depo_antrian_direksi/config/app_constant.dart';
import 'package:depo_antrian_direksi/config/app_format.dart';
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

    final url = Uri.parse('${AppConstant.baseUrl}/createAntrian');
    final response = await http.post(
      url,
      // headers: {
      //   'Content-Type': 'application/json',
      // },
      body: jsonBody,
    );

    if (response.statusCode == 201) {
      return const Right('Berhasil membuat Antrian');
    } else {
      return const Left('Gagal Login');
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

  Future<Either<String, String>> cekStatusAntrian() async {
    final url = Uri.parse('${AppConstant.baseUrl}/antrian_state');
    // ignore: unused_local_variable
    final response = await http.get(
      url,
    );

    DMethod.log(response.body);

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body); // Decode JSON
      final message = responseBody['message']; // Ambil nilai 'message'
      return Right(message); // Return 'message' jika status 200
    } else {
      return const Left('Off'); // Return 'message' jika status bukan 200
    }
  }

  Future<Either<String, String>> updateStatusAntrian(
    bool isSwitched,
    String changeBy,
  ) async {
    await AuthLocalDataSource().getAuthData();

    Map<String, dynamic> data = {
      'changeBy': changeBy,
      'tglAntrian': AppFormat.getCurrentDate() ?? '',
      'statusAntrian': (isSwitched ? 'AKTIF' : 'OFF'),
    };

    // Encode the data to JSON
    String jsonBody = json.encode(data);

    final url = Uri.parse('${AppConstant.baseUrl}/updateStateAntrian');
    final response = await http.post(
      url,
      // headers: {
      //   'Content-Type': 'application/json',
      // },
      body: jsonBody,
    );
     DMethod.log(response.body);
     
    if (response.statusCode == 201) {
      final responseBody = json.decode(response.body); // Decode JSON
      final message = responseBody['message']; // Ambil nilai 'message'

      return Right(message); // Return 'message' jika status 201
    } else {
      return const Left('Off'); // Return 'message' jika status bukan 201
    }
  }


  Future<Either<String, String>> callAntrian(  
    String id,
    
  ) async {
    await AuthLocalDataSource().getAuthData();

    Map<String, dynamic> data = {
      'id': id,      
    };

    // Encode the data to JSON
    String jsonBody = json.encode(data);

    final url = Uri.parse('${AppConstant.baseUrl}/callntrianById');
    final response = await http.post(
      url,
      // headers: {
      //   'Content-Type': 'application/json',
      // },
      body: jsonBody,
    );
     
    if (response.statusCode == 201) {
      final responseBody = json.decode(response.body); // Decode JSON
      final message = responseBody['message']; // Ambil nilai 'message'

      return Right(message); // Return 'message' jika status 201
    } else {
      return const Left('Off'); // Return 'message' jika status bukan 201
    }
  }

  Future<Either<String, String>> updateAntrianByID(  
    String id,
    String changeBy,
    String statusAntrian,
  ) async {
    await AuthLocalDataSource().getAuthData();

    Map<String, dynamic> data = {
      'id': id,      
      'changeBy': changeBy,
      'statusAntrian': statusAntrian,
    };

    // Encode the data to JSON
    String jsonBody = json.encode(data);

    final url = Uri.parse('${AppConstant.baseUrl}/updateStatusAntrianById');
    final response = await http.post(
      url,
      // headers: {
      //   'Content-Type': 'application/json',
      // },
      body: jsonBody,
    );
     
    if (response.statusCode == 201) {
      final responseBody = json.decode(response.body); // Decode JSON
      final message = responseBody['message']; // Ambil nilai 'message'

      return Right(message); // Return 'message' jika status 201
    } else {
      return const Left('Off'); // Return 'message' jika status bukan 201
    }
  }

  Future<Either<String, String>> skipAntrian(  
    String id,
    
  ) async {
    await AuthLocalDataSource().getAuthData();

    Map<String, dynamic> data = {
      'id': id,      
    };

    // Encode the data to JSON
    String jsonBody = json.encode(data);

    final url = Uri.parse('${AppConstant.baseUrl}/skipAntrianById');
    final response = await http.post(
      url,
      // headers: {
      //   'Content-Type': 'application/json',
      // },
      body: jsonBody,
    );
     
    if (response.statusCode == 201) {
      final responseBody = json.decode(response.body); // Decode JSON
      final message = responseBody['message']; // Ambil nilai 'message'

      return Right(message); // Return 'message' jika status 201
    } else {
      return const Left('Off'); // Return 'message' jika status bukan 201
    }
  }

}
