
import 'package:flutter/cupertino.dart';

class SizeBoxModel {
  String? title;
  int? id;

  SizeBoxModel({this.title, this.id});
}

class SizeBoxData{
  List<SizeBoxModel> sizeBox = [
     SizeBoxModel(title: "XS", id: 0),
     SizeBoxModel(title: "S", id: 1),
     SizeBoxModel(title: "M", id: 2),
     SizeBoxModel(title: "L", id: 3),
     SizeBoxModel(title: "XL", id: 4),
     SizeBoxModel(title: "XXL", id: 5),
  ];
}