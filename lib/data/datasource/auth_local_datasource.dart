import 'package:depo_antrian_direksi/data/models/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('auth_data', authResponseModel.toJson());
  }

  Future<void> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('auth_data');
  }

  Future<AuthResponseModel?> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString('auth_data');
    if (authData != null) {
      return AuthResponseModel.fromJson(authData);
    } else {
      return null;
    }
  }

  Future<bool> isUserLogedIn() async {
    final pref = await SharedPreferences.getInstance();
    return pref.containsKey('auth_data');
  }


  Future<void> saveTokenData(String tokenFirebase) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('auth_token', tokenFirebase);
  }

  Future<String?> getTokenData() async {
    final pref = await SharedPreferences.getInstance();
    final authTokenData = pref.getString('auth_token');
    if (authTokenData != null) {
      return authTokenData;
    } else {
      return null;
    }
  }

  Future<void> removeTokenData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('auth_token');
  }
}
