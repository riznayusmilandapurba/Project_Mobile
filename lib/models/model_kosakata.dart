// To parse this JSON data, do
//
//     final modelBerita = modelBeritaFromJson(jsonString);

import 'dart:convert';

ModelKosakata modelKosakataFromJson(String str) => ModelKosakata.fromJson(json.decode(str));

String modelKosakataToJson(ModelKosakata data) => json.encode(data.toJson());

class ModelKosakata {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelKosakata({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelKosakata.fromJson(Map<String, dynamic> json) => ModelKosakata(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String kosakata;
  String terjemahan;

  Datum({
    required this.id,
    required this.kosakata,
    required this.terjemahan,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    kosakata: json["kosakata"],
    terjemahan: json["terjemahan"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "kosakata": kosakata,
    "terjemahan": terjemahan,
  };
}
