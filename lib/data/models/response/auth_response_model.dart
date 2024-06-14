import 'dart:convert';

class AuthResponseModel {
    final bool? status;
    final String? message;
    final User? user;

    AuthResponseModel({
        this.status,
        this.message,
        this.user,
    });

    factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
        status: json["status"],
        message: json["message"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "user": user?.toMap(),
    };
}

class User {
    final String? nik;
    final String? nama;
    final String? jabatan;

    User({
        this.nik,
        this.nama,
        this.jabatan,
    });

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        nik: json["nik"],
        nama: json["nama"],
        jabatan: json["jabatan"],
    );

    Map<String, dynamic> toMap() => {
        "nik": nik,
        "nama": nama,
        "jabatan": jabatan,
    };
}
