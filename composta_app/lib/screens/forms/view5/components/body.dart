import 'package:flutter/material.dart';

class Residuo {
  String residuo;
  String n;
  String c;
  String h20;
  Residuo(String s, String t, String u, String v) {
    this.residuo = s;
    this.n = t;
    this.c = u;
    this.h20 = v;
  }
}

// ignore: must_be_immutable
class Body extends StatelessWidget {
  List<Residuo> fields = [
    new Residuo("Resiudos", "N", "C", "H2O"),
    new Residuo("Frutas", "15", "8", "9")
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: getFields(fields, context),
      ),
    );
  }

  List<Widget> getFields(fields, BuildContext context) {
    List<Widget> widget = List();
    widget.add(Text("¿Qué residuos genera"));
    for (Residuo f in fields) {
      widget.add(field(f));
    }
    widget.add(RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.transparent),
      ),
      child: const Text('Finalizar', style: TextStyle(fontSize: 20)),
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
            '/CompostDetail', ModalRoute.withName('/Home'));
      },
    ));
    return widget;
  }

  Widget field(Residuo text) => Container(
          child: Center(
              child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                Column(children: [Text(text.residuo)]),
                Column(children: [Text(text.n)]),
                Column(children: [Text(text.c)]),
                Column(children: [Text(text.h20)]),
              ]),
            ],
          ),
        ),
      ])));
}
