// To parse this JSON data, do
//
//     final statusmodel = statusmodelFromJson(jsonString);

import 'dart:convert';

Statusmodel statusmodelFromJson(String str) =>
    Statusmodel.fromJson(json.decode(str));

String statusmodelToJson(Statusmodel data) => json.encode(data.toJson());

class Statusmodel {
  Statusmodel({
    required this.name,
    required this.updatedinfo,
    required this.avatar,
  });

  String name;
  String updatedinfo;
  String avatar;

  factory Statusmodel.fromJson(Map<String, dynamic> json) => Statusmodel(
        name: json["name"],
        updatedinfo: json["updatedinfo"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "updatedinfo": updatedinfo,
        "avatar": avatar,
      };
}
