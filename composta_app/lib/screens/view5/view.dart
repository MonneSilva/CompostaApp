import 'package:composta_app/dataModel/composta/compost.dart';
import 'package:composta_app/screens/view5/components/body.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/tools/appbar.dart';

class Estadistics extends StatefulWidget {
  @override
  _EstadisticsState createState() => _EstadisticsState();
}

class _EstadisticsState extends State<Estadistics> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Compost data = ModalRoute.of(context).settings.arguments as Compost;
    List<Values> temp = new List();
    List<Values> ph = new List();
    List<Values> humedad = new List();
    initData() {
      data.data['control'].forEach((element) {
        temp.add(new Values(element['fecha'], element['temperatura']));
      });
      data.data['control'].forEach((element) {
        ph.add(new Values(element['fecha'], element['ph']));
      });
      data.data['control'].forEach((element) {
        humedad.add(new Values(element['fecha'], element['humedad']));
      });
    }

    //initData();

    return Scaffold(
        appBar: appBarbuild(context),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              'Estadisticas',
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            Barras(),
          ],
        )));
  }
}
