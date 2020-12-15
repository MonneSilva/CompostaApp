import 'package:flutter/cupertino.dart';

class Residuo {
  //all information is save here
  int id;
  Map<String, dynamic> data;

  Residuo({@required this.id, @required this.data});

  static Residuo fromMap(int id, Map<String, dynamic> map) {
    return Residuo(id: id, data: map);
  }

//FROM JSON FORM TO OBJECT
  Residuo.fromJson(int id, Map<String, dynamic> json) {
    this.id = id;
    this.data = json;
  }

  getElement(String key) {
    if (data.isNotEmpty && (data.containsKey(key))) //Is not null and key exist
      return data.values.toList();
    else
      return null;
  }

  setData(Map<String, dynamic> data) {
    this.data = data;
  }

  setElement(String key, dynamic value) {
    return data.putIfAbsent(key, () => value);
  }
}
