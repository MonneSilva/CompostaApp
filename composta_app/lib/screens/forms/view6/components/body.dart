import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        children: <Widget>[
          Container(
            height: 80.0,
            margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Text("Espere un momento",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 250.0,
            margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 50.0),
            child: FlareActor("lib/assets/img/Bote_flechas_giran.flr", animation: "Reciclaje"),
          ),
          Container(
            height: 90.0,
            margin: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 0.0),
            child: Text("Calculando Nutrientes",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ]
      ),
    );
  }
 
}
