// To parse this JSON data, do
//
//     final contactListJson = contactListJsonFromJson(jsonString);

import 'dart:convert';

List<ContactListJson> contactListJsonFromJson(String str) => List<ContactListJson>.from(json.decode(str).map((x) => ContactListJson.fromJson(x)));

String contactListJsonToJson(List<ContactListJson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContactListJson {
  ContactListJson({
    this.name,
    this.number,
  });

  String name;
  String number;

  factory ContactListJson.fromJson(Map<String, dynamic> json) => ContactListJson(
    name: json["name"] == null ? null : json["name"],
    number: json["number"] == null ? null : json["number"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "number": number == null ? null : number,
  };
}
