
import 'package:composta_app/tools/charts.dart';
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
            child: Text("Temperatura",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20),
            ),
          ),
          //SimpleTimeSeriesChart(),
           Container(
            height: 80.0,
            margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Text("pH",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20),
            ),
          ),
           Container(
            height: 80.0,
            margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Text("Humedad",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20),
            ),
          ),
          
        ]
      ),
    );
  }
 
}
