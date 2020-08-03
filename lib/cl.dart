import 'package:flutter/cupertino.dart';
import './db.dart';

class Checklist {
  int id;
  String name;
  String ans1;
  String ans2a;
  String ans2b;
  String ans2c;
  String ans2d;
  String ans3;

  Checklist({this.id, this.name, this.ans1,this.ans2a,this.ans2b,this.ans2c,this.ans2d, this.ans3});

  factory Checklist.fromMap(Map<String, dynamic> json) => new Checklist(
    id: json["id"],
    name: json["name"],
    ans1: json["ans1"],
    ans2a: json["ans2a"],
    ans2b: json["ans2b"],
    ans2c: json["ans2c"],
    ans2d: json["ans2d"],
    ans3: json["ans3"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "ans1": ans1,
    "ans2a": ans2a,
    "ans2b": ans2b,
    "ans2c": ans2c,
    "ans2d": ans2d,
    "ans3": ans3,
  };
}

