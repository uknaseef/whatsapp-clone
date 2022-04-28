// To parse this JSON data, do
//
//     final callpagemodel = callpagemodelFromJson(jsonString);

import 'dart:convert';

Callpagemodel callpagemodelFromJson(String str) =>
    Callpagemodel.fromJson(json.decode(str));

String callpagemodelToJson(Callpagemodel data) => json.encode(data.toJson());

class Callpagemodel {
  Callpagemodel({
    required this.name,
    required this.avathar,
    required this.timeanddateinfo,
    required this.isaudiocall,
    required this.isvedio,
    required this.isincoming,
    required this.isoutgoing,
  });

  String name;
  String avathar;
  String timeanddateinfo;
  bool isaudiocall;
  bool isvedio;
  bool isincoming;
  bool isoutgoing;

  factory Callpagemodel.fromJson(Map<String, dynamic> json) => Callpagemodel(
        name: json["name"],
        avathar: json["avathar"],
        timeanddateinfo: json["timeanddateinfo"],
        isaudiocall: json["isaudiocall"],
        isvedio: json["isvedio"],
        isincoming: json["isincoming"],
        isoutgoing: json["isoutgoing"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "avathar": avathar,
        "timeanddateinfo": timeanddateinfo,
        "isaudiocall": isaudiocall,
        "isvedio": isvedio,
        "isincoming": isincoming,
        "isoutgoing": isoutgoing,
      };
}
