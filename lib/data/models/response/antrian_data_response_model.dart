import 'dart:convert';

class AntrianDataResponseModel {
  final bool? status;
  final String? message;
  final List<AntrianDireksi>? data;

  AntrianDataResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory AntrianDataResponseModel.fromJson(String str) =>
      AntrianDataResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AntrianDataResponseModel.fromMap(Map<String, dynamic> json) =>
      AntrianDataResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<AntrianDireksi>.from(
                json["data"]!.map((x) => AntrianDireksi.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class AntrianDireksi {
  final String? id;
  final String? nik;
  final String? namaKaryawan;
  final String? jabatan;
  final String? keperluan;
  final DateTime? tglAntrian;
  final String? waktuAntrian;
  final String? noAntrian;
  final String? statusAntrian;
  final String? waktuMasuk;
  final String? waktuKeluar;
  final String? changeBy;

  AntrianDireksi({
    this.id,
    this.nik,
    this.namaKaryawan,
    this.jabatan,
    this.keperluan,
    this.tglAntrian,
    this.waktuAntrian,
    this.noAntrian,
    this.statusAntrian,
    this.waktuMasuk,
    this.waktuKeluar,
    this.changeBy,
  });

  factory AntrianDireksi.fromJson(String str) =>
      AntrianDireksi.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AntrianDireksi.fromMap(Map<String, dynamic> json) => AntrianDireksi(
        id: json["id"],
        nik: json["nik"],
        namaKaryawan: json["namaKaryawan"],
        jabatan: json["jabatan"],
        keperluan: json["keperluan"],
        tglAntrian: json["tglAntrian"] == null
            ? null
            : DateTime.parse(json["tglAntrian"]),
        waktuAntrian: json["waktuAntrian"],
        noAntrian: json["noAntrian"],
        statusAntrian: json["statusAntrian"],
        waktuMasuk: json["waktuMasuk"],
        waktuKeluar: json["waktuKeluar"],
        changeBy: json["changeBy"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nik": nik,
        "namaKaryawan": namaKaryawan,
        "jabatan": jabatan,
        "keperluan": keperluan,
        "tglAntrian":
            "${tglAntrian!.year.toString().padLeft(4, '0')}-${tglAntrian!.month.toString().padLeft(2, '0')}-${tglAntrian!.day.toString().padLeft(2, '0')}",
        "waktuAntrian": waktuAntrian,
        "noAntrian": noAntrian,
        "statusAntrian": statusAntrian,
        "waktuMasuk": waktuMasuk,
        "waktuKeluar": waktuKeluar,
        "changeBy": changeBy,
      };
}
