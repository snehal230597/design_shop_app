
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorBoxModel {
  String? title;
  int? id;
  Color? color;

  ColorBoxModel({this.title, this.id, this.color});
}

class ColorBoxData {
  List<ColorBoxModel> colorBox = [
    ColorBoxModel(title: "Red", id: 0, color: Colors.red),
    ColorBoxModel(title: "Black", id: 1, color: Colors.black),
    ColorBoxModel(title: "Green", id: 2, color: Colors.green),
    ColorBoxModel(title: "White", id: 3, color: Colors.grey),
    ColorBoxModel(title: "Blue", id: 4, color: Colors.blue),
    ColorBoxModel(title: "cyan", id: 5, color: Colors.cyan),
    ColorBoxModel(title: "Pink", id: 6, color: Colors.pink),
  ];
}