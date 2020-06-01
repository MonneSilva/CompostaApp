import 'package:flutter/material.dart';
import 'package:composta_app/compostSummary.dart';
import 'package:composta_app/dataModel/compost.dart';

class Body extends StatelessWidget {
  List<Compost> composts = [
 new Compost("Composta 1",1),
  new Compost("Composta 2",2),
   new Compost("Composta 3",1),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: <Widget>[
          Text("Mis Compostas", style: TextStyle(fontSize: 25)),
          //Hacer dinamico esto
              new CompostSummary(compost:composts.elementAt(0)),
              new CompostSummary(compost:composts.elementAt(1)),
              new CompostSummary(compost:composts.elementAt(2)),
        ],
      )
      );
  }
}