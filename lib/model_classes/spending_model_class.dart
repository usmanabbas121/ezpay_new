// To parse this JSON data, do
//
//     final spendinglistjson = spendinglistjsonFromJson(jsonString);

import 'dart:convert';

List<Spendinglistjson> spendinglistjsonFromJson(String str) => List<Spendinglistjson>.from(json.decode(str).map((x) => Spendinglistjson.fromJson(x)));

String spendinglistjsonToJson(List<Spendinglistjson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Spendinglistjson {
  Spendinglistjson({
    this.name,
    this.date,
    this.amount,
    this.left,
    this.type,
  });

  String name;
  DateTime date;
  int amount;
  int left;
  String type;

  factory Spendinglistjson.fromJson(Map<String, dynamic> json) => Spendinglistjson(
    name: json["name"] == null ? null : json["name"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    amount: json["amount"] == null ? null : json["amount"],
    left: json["left"] == null ? null : json["left"],
    type: json["type"] == null ? null : json["type"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "date": date == null ? null : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "amount": amount == null ? null : amount,
    "left": left == null ? null : left,
    "type": type == null ? null : type,
  };
}
