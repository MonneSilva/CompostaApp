import 'dart:convert';

import 'package:composta_app/dataModel/residuo/residuo.dart';
import 'package:flutter/services.dart';

class ResiduoDao {
  List<Residuo> residuos;

  Future<List<Residuo>> getAll() async {
    residuos = new List();
    Map data = Map.castFrom(json
        .decode(await rootBundle.loadString('lib/assets/json/residuos.json')));

    //Map rMap = Map.castFrom(json.decode(data['residuos'].toString()));
    print("Data: " + data['residuos'].toString());
    for (Map i in data['residuos']) {
      Residuo r = new Residuo(id: null, data: i);
      residuos.add(r);
    }
    return residuos;
  }
}
